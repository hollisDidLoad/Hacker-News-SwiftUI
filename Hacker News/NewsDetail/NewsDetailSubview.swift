//
//  NewsDetailWebSubview.swift
//  Hacker News
//
//  Created by Hollis Kwan on 2/1/23.
//

import Foundation
import SwiftUI
import WebKit

extension NewsDetailView {
    struct WebView: UIViewRepresentable {
        
        var urlString: String?
        
        func makeUIView(context: Context) -> some UIView {
            return WKWebView()
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            let webView = uiView as? WKWebView
            if let urlString = urlString {
                if let url = URL(string: urlString) {
                    let request = URLRequest(url: url)
                    webView?.load(request)
                }
            }
        }
    }
}
