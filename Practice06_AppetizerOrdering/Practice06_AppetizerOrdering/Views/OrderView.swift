//
//  OrderView.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/15.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(order.items) { appetizer in
                        AppetizerListCellView(appetizer: appetizer)
                    }
                    .onDelete(perform: order.deleteItem)
                }
                .listStyle(.plain)
                
                VStack {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        APButton(text: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom)
                }
                
                if order.items.isEmpty {
                    EmptyOrderView(imageName: "empty-order", message: "There is no item ordered.\nAdd some appetizers!")
                }
            }
            .navigationTitle("Order")
        }
    }
}
