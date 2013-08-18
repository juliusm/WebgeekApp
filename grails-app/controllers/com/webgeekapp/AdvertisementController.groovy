package com.webgeekapp

class AdvertisementController {

    def index() {
        
    }
	
	def search () {
		
	}

    def list() {
        params.max = 5
        def properties = params.q? Property.search(params.q, sort: 'nearestEndDate', order: 'asc', max: params.max, offset: params.offset):
                         [results: Property.list(params)]
        params.total = params.q? properties.total: Property.count

        [propertyList: properties]
    }

    def show(Long id) {

        def propertyInstance = Property.get(id)
        [propertyInstance: propertyInstance]
    }
}
