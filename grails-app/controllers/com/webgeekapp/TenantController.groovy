package com.webgeekapp

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_CARETAKER'])
class TenantController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tenantInstanceList: Tenant.list(params), tenantInstanceTotal: Tenant.count()]
    }

    def create() {
        [tenantInstance: new Tenant(params)]
    }

    def save() {
        def propertyInstance = Property.get(params.propertyId)
        def tenantInstance = new Tenant(params)
        if(tenantInstance.validate()) {
            Tenant.withTransaction { status ->

                if (!tenantInstance.save(flush: true)) {
                    status.setRollbackOnly()
                    render(view: "create", model: [tenantInstance: tenantInstance])
                    return
                }

                propertyInstance.addToTenants(tenantInstance)
                if (!propertyInstance.save(flush: true)) {
                    status.setRollbackOnly()
                    render(view: "create", model: [tenantInstance: tenantInstance])
                    return
                }
            }

            flash.message = message(code: 'default.created.message', args: [message(code: 'tenant.label', default: 'Tenant'), tenantInstance.id])
            redirect(controller: "property" ,action: "show", id: propertyInstance.id)
        } else {
            render(view: "create", model: [tenantInstance: tenantInstance])
            return
        }

    }

    def show(Long id) {
        def tenantInstance = Tenant.get(id)
        if (!tenantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tenant.label', default: 'Tenant'), id])
            redirect(action: "list")
            return
        }

        [tenantInstance: tenantInstance]
    }

    def edit(Long id) {
        def tenantInstance = Tenant.get(id)
        if (!tenantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tenant.label', default: 'Tenant'), id])
            redirect(action: "list")
            return
        }

        [tenantInstance: tenantInstance]
    }

    def update(Long id, Long version) {
        def tenantInstance = Tenant.get(id)
        if (!tenantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tenant.label', default: 'Tenant'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tenantInstance.version > version) {
                tenantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'tenant.label', default: 'Tenant')] as Object[],
                        "Another user has updated this Tenant while you were editing")
                render(view: "edit", model: [tenantInstance: tenantInstance])
                return
            }
        }

        tenantInstance.properties = params

        if (!tenantInstance.save(flush: true)) {
            render(view: "edit", model: [tenantInstance: tenantInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tenant.label', default: 'Tenant'), tenantInstance.id])
        redirect(action: "show", id: tenantInstance.id)
    }

    def delete(Long id) {
        def tenantInstance = Tenant.get(id)
        if (!tenantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tenant.label', default: 'Tenant'), id])
            redirect(action: "list")
            return
        }

        try {
            tenantInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tenant.label', default: 'Tenant'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tenant.label', default: 'Tenant'), id])
            redirect(action: "show", id: id)
        }
    }
}
