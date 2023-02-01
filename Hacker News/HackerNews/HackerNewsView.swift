//
//  ContentView.swift
//  Hacker News
//
//  Created by Hollis Kwan on 2/1/23.
//

import SwiftUI

struct HackerNewsView: View {
    
    @StateObject var viewModel = ViewModel(
        networkManager: NetWorkManager.shared
    )
    
    var body: some View {
        NavigationStack {
            List(viewModel.hackerNewsModel) { data in
                NavigationLink(destination: NewsDetailView(url: data.url, title: data.title), label: {
                    HStack {
                        Text(String(data.points ?? 0))
                        Text(data.title ?? "").offset(CGSize(width: 10, height: 0))
                    }
                })
            }
            .navigationTitle("Hacker News")
        }.onAppear(perform: {
                viewModel.setModelData()
        })
    }
}

struct HackerNewsView_Previews: PreviewProvider {
    static var previews: some View {
        HackerNewsView()
    }
}
