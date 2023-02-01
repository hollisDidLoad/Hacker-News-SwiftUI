//
//  HackerNewsViewModel.swift
//  Hacker News
//
//  Created by Hollis Kwan on 2/1/23.
//

import Foundation

extension HackerNewsView {
    class ViewModel: ObservableObject {
        @Published var networkManager: NetWorkManager
        @Published var hackerNewsModel = [HackerNewsModel]()
        
        init(networkManager: NetWorkManager) {
            self.networkManager = networkManager
        }
        
        func setModelData() {
            networkManager.fetchNews(completion: { [weak self] in
                DispatchQueue.main.async {
                    self?.hackerNewsModel = self?.networkManager.posts.map { HackerNewsModel($0) } ?? [HackerNewsModel]()
                }
            })
        }
    }
}
