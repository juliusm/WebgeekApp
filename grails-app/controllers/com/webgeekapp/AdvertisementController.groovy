package com.webgeekapp

class AdvertisementController {

    def index() {
        redirect(action: 'list')
    }

    def list() {

        StringBuilder sb = new StringBuilder()
        sb.append("title: ").append(params.title).append(" OR ")
        sb.append("startDate: ").append(params.startDate).append(" OR ")
        sb.append("city: ").append(params.city)

        def properties = Property.search(sb.toString())

        [propertyList: properties]
    }

    def show() {

    }
}
