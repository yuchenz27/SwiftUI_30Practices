//
//  Order.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/18.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func addItem(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
