//
//  HackerNewsModel.swift
//  Hacker News
//
//  Created by Hollis Kwan on 2/1/23.
//

import Foundation

struct HackerNewsModel: Identifiable {
    var id: String {
        return objectID ?? ""
    }
    var objectID: String?
    var points: Int?
    var title: String?
    var url: String?
    
    init(_ post: Post) {
        self.objectID = post.objectID
        self.points = post.points
        self.title = post.title
        self.url = post.url
    }
}
