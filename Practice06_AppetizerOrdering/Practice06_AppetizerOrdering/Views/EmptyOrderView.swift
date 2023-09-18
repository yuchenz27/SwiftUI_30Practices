//
//  EmptyOrderView.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/18.
//

import SwiftUI

struct EmptyOrderView: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
        //.offset(y: -50)
    }
}

#Preview {
    EmptyOrderView(imageName: "empty-order", message: "There is no item ordered.\nAdd some appetizers!")
}
