//
//  Practice06_AppetizerOrderingApp.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/15.
//

// Inspired by Sean Allen's SwiftUI course

import SwiftUI

@main
struct Practice06_AppetizerOrderingApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
