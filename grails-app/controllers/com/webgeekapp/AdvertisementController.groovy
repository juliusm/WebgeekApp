package com.webgeekapp

class AdvertisementController {

    def index() {
        redirect(action: 'list')
    }

    def list() {

        params.max = 5
        def properties = params.q? Property.search(params.q, sort: 'nearestEndDate', order: 'asc'): [results: Property.list(params)]
        def total = params.q? properties.total: Property.count

        [propertyList: properties, total:total]
    }

    def show() {

    }
}
