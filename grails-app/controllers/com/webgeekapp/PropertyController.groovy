package com.webgeekapp

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_CARETAKER'])
class PropertyController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        def currentUser = springSecurityService.getCurrentUser() as User
        params.max = Math.min(max ?: 10, 100)
        [propertyInstanceList: currentUser.propertyList, propertyInstanceTotal: Property.count()]
    }

    def create() {
        [propertyInstance: new Property(params)]
    }

    def save() {
        def currentUser = springSecurityService.getCurrentUser() as User
        def propertyInstance = new Property(params)
        currentUser.addToPropertyList(propertyInstance)
        if (!propertyInstance.save(flush: true)) {
            render(view: "create", model: [propertyInstance: propertyInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'property.label', default: 'Property'), propertyInstance.id])
        redirect(action: "show", id: propertyInstance.id)
    }

    def show(Long id) {
        def propertyInstance = Property.get(id)
        if (!propertyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'property.label', default: 'Property'), id])
            redirect(action: "list")
            return
        }

        [propertyInstance: propertyInstance]
    }

    def edit(Long id) {
        def propertyInstance = Property.get(id)
        if (!propertyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'property.label', default: 'Property'), id])
            redirect(action: "list")
            return
        }

        [propertyInstance: propertyInstance]
    }

    def update(Long id, Long version) {
        def propertyInstance = Property.get(id)
        if (!propertyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'property.label', default: 'Property'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (propertyInstance.version > version) {
                propertyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'property.label', default: 'Property')] as Object[],
                        "Another user has updated this Property while you were editing")
                render(view: "edit", model: [propertyInstance: propertyInstance])
                return
            }
        }

        propertyInstance.properties = params

        if (!propertyInstance.save(flush: true)) {
            render(view: "edit", model: [propertyInstance: propertyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'property.label', default: 'Property'), propertyInstance.id])
        redirect(action: "show", id: propertyInstance.id)
    }

    def delete(Long id) {
        def propertyInstance = Property.get(id)
        if (!propertyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'property.label', default: 'Property'), id])
            redirect(action: "list")
            return
        }

        try {
            propertyInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'property.label', default: 'Property'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'property.label', default: 'Property'), id])
            redirect(action: "show", id: id)
        }
    }

    def viewMainPicture = {
        def property = Property.get(params.id)
        def avatarFile
        def user = User.get(params.id)
        def avatarContentType = 'image/jpeg'
        if (!avatarFile || !params.temporary) {
            avatarFile = property.photo
        }

        response.setHeader("Content-disposition", "attachment; filename=avatar.jpg")
        response.contentType = avatarContentType ?:  'image/jpeg'
        response.outputStream << avatarFile
        response.outputStream.flush()
    }
}
