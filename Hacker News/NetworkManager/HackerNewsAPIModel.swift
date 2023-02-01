//
//  HackerNewsAPIModel.swift
//  Hacker News
//
//  Created by Hollis Kwan on 2/1/23.
//

import Foundation

struct HackerNewsAPIModel: Codable {
    var hits: [Post]?
}

struct Post: Codable {
    var objectID: String?
    var points: Int?
    var title: String?
    var url: String?
}
