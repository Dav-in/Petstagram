//
//  APIRequest.swift
//  Petstagram
//
//  Created by Davin Henrik on 12/28/21.
//

import Foundation

// as a string the raw value per case will match case name
enum HTTPMethod: String {
    case GET
    case POST
    case PUT
}
//definition for method, path, body
protocol APIRequest {
    //when request finishes, handle data, return strong type
    associatedtype Response
    
    var method: HTTPMethod {get}
    var path: String {get}
    var body: Data? {get}
    
    func handle(response: Data) throws -> Response
}
