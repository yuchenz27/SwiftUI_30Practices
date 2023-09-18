//
//  ContentView.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/15.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
        .environmentObject(Order())
}
