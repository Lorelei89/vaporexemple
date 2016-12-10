////
////  DataSource.swift
////  HelloWorld
////
////  Created by sabina on 10/12/16.
////
////
//
//import Foundation
//import Vapor
//
//struct Category {
//    let technologyID: String
//    let question: String
//    let response: String
//    let technology: Technology
//}
//
//struct Technology {
//    let technologyName:String
//    let id:String
//}
//
//extension Category: JsonRepresentable {
//    
//    func makeJson() -> Json {
//        return Json(["technologyID": technologyID,
//                     "category": category,
//                     "response": response,
//                     "technology":technology
//                     ])
//    }
//}
//
//class DataSource: JsonRepresentable {
//    
//    func makeJson() -> Json {
//        let content = DataSource().source.map { $0.makeJson() }
//        return Json.object(["version" : Json(APIVersion), "content": Json.array(content)])
//    }
//    
//    func getCategoryWithID( _id: String) -> Json {
//        let category = source.filter { $0.technologyID == id }
//        guard let result = category.first else {
//            return Json(["error": "No country found with the given 2-letter country code \(technologyID)"])
//        }
//        return result.makeJson()
//    }
//    
//    let APIVersion = 0.1
//    
//    let source = [Category(technologyID:"1",
//                           question:"Why is Swift better then Objective c?",
//                           response:"",
//                           Technology(technologyName:"Swift",id:"1")).self,
//                  Category(technologyID:"2",
//                           question:"Objective c",
//                           response:"because a more functional programming language2",
//                           Technology(technologyName:"Swift",id:"2")).self,
//                  Category(technologyID:"3",
//                           question:"Why is Swift better then Objective c?",
//                           response:"because a more functional programming language3",
//                           Technology(technologyName:"Swift",id:"3")).self,
//                  Category(technologyID:"4",
//                           question:"Why is Swift better then Objective c4",
//                           response:"because a more functional programming language4",
//                           Technology(technologyName:"Objetive C",id:"4")).selff,
//                  Category(technologyID:"5",
//                           question:"Why is Swift better then Objective c5",
//                           response:"because a more functional programming language5",
//                           Technology(technologyName:"Angular JS",id:"5")).self,
//                  Category(technologyID:"6",
//                           question:"Why is",
//                           response:"because a more functional programming language6",
//                           Technology(technologyName:"Ruby and Rails",id:"6")).self]
//}
