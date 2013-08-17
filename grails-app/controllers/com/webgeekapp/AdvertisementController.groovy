package com.webgeekapp

class AdvertisementController {

    def index() {
        redirect(action: 'list')
    }

    def list() {

        def properties = Property.search(params.q, sort: 'nearestEndDate', order: 'asc')

        [propertyList: properties]
    }

    def show() {

    }
}
