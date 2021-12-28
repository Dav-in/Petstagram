//
//  APIEnvironment.swift
//  Petstagram
//
//  Created by Davin Henrik on 12/28/21.
//

import Foundation


struct APIEnvironment {
    var baseURL: URL
}

extension APIEnvironment {
    static let prod = APIEnvironment(baseURL: URL(string: "https:example.com/api/v1")!)
    static let local = APIEnvironment(baseURL: URL(string: "localhost:8080/api/v1")!)
}
