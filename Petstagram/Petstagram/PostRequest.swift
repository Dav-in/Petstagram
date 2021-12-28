//
//  PostRequest.swift
//  Petstagram
//
//  Created by Davin Henrik on 12/28/21.
//

import Foundation

struct PostRequest: APIRequest {
    typealias Response = [Post]
    
    var method: HTTPMethod { return .GET }
    var path: String {return "/posts" }
    //no body in request
    var body: Data? { return nil }
    
    //returned data will be created into an array of objects
    func handle(response: Data) throws -> [Post] {
        return try JSONDecoder().decode(Response.self, from: response)
    }
}
