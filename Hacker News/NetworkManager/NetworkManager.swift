//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Hollis Kwan on 2/1/23.
//

import Foundation

class NetWorkManager: ObservableObject {
    
    static let shared = NetWorkManager()
    private init() {}
    
    @Published var posts = [Post]()
    
    func fetchNews(completion: @escaping () -> Void) {
        guard let baseUrl = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        URLSession.shared.dataTask(with: baseUrl, completionHandler: { data, _, error in
            if let error = error {
                print(error)
                return
            }
            
            if let data = data {
                do {
                    let jsonData = try JSONDecoder().decode(HackerNewsAPIModel.self, from: data)
                    self.posts = jsonData.hits ?? [Post]()
                    completion()
                } catch {
                    print(error)
                }
            }
        }).resume()
    }
    
}
