class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/advertisement/index") {
			controller =  "advertisement"
		}
		"500"(view:'/error')
	}
}
