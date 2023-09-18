//
//  APButton.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/17.
//

import SwiftUI

struct APButton: View {
    
    var text: LocalizedStringKey
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(Color("brandPrimary"))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(text: "Button")
}
