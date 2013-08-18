package com.webgeekapp

class AdvertisementController {

    def index() {
        
    }
	
	def search () {
		
	}

    def list() {
        params.max = 5
        def properties = params.q? Property.search(params.q, sort: 'nearestEndDate', order: 'asc'): [results: Property.list(params)]
        def total = params.q? properties.total: Property.count

        [propertyList: properties, total:total]
    }

    def show(Long id) {

        def propertyInstance = Property.get(id)
        println("ID: ${id}")
        println("propertyInstance: ${propertyInstance}")

        [propertyInstance: propertyInstance]
    }
}
