//
//  NewsDetailView.swift
//  Hacker News
//
//  Created by Hollis Kwan on 2/1/23.
//

import SwiftUI
import WebKit

struct NewsDetailView: View {
    
    var url: String?
    var title: String?
    
    var body: some View {
        WebView(urlString: url)
            .edgesIgnoringSafeArea(.all)
            .navigationTitle(title ?? "")
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView()
    }
}

