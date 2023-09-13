//
//  SafariView.swift
//  Practice04_AppleFrameworksGrid
//
//  Created by Yuchen Zhang on 2023/9/13.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {

    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiviewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}

#Preview {
    SafariView(url: URL(string:"www.apple.com")!)
}
