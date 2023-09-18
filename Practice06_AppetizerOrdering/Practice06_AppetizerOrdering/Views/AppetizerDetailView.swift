//
//  AppetizerDetailView.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/17.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    let appetizer: Appetizer
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                // Appetizer Name
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfoView(title: "Calories", content: "\(appetizer.calories)")
                    NutritionInfoView(title: "Carbs", content: "\(appetizer.carbs) g")
                    NutritionInfoView(title: "Protein", content: "\(appetizer.protein) g")
                }
                
                Spacer()
                
                Button {
                    order.addItem(appetizer)
                    isShowingDetailView = false
                } label: {
                    APButton(text: "$\(appetizer.price, specifier: "%.2f") - Add To Order")
                        .padding(.bottom, 30)
                }
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay (Button{
            isShowingDetailView = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct NutritionInfoView: View {
    let title: String
    let content: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            
            Text(content)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: Appetizer(id: 0001, name: "La Zi Ji Ding", description: "Spicy chicken with green and red pepper", price: 12.99, imageURL: "", calories: 99, protein: 9, carbs: 9), isShowingDetailView: .constant(false))
}
