//
//  Post.swift
//  Petstagram
//
//  Created by Davin Henrik on 12/28/21.
//

import Foundation
//make codable for JSON
struct Post: Codable {
    //for each post
    var caption: String
    //sort feed by date
    var createdAt: Date
    // image resource
    var photoUrl: URL
}

