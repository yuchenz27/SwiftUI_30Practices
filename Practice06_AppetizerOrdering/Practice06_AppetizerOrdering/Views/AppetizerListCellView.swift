//
//  AppetizerListCellView.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/15.
//

import SwiftUI

struct AppetizerListCellView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .lineLimit(2)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCellView(appetizer: Appetizer(id: 0001, name: "La Zi Ji Ding", description: "Spicy chicken with green and red pepper", price: 12.99, imageURL: "", calories: 99, protein: 9, carbs: 9))
}
