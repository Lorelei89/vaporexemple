import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}


drop.get("friends") { req in
    return try JSON(node: ["friends": [["name": "Sarah", "age": 33],
                                          ["name": "Steve", "age": 31],
                                          ["name": "Drew", "age": 35]]
    ])
}

drop.resource("posts", PostController())

drop.run()


