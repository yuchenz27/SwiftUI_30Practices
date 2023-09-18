//
//  AppetizerListViewModel.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/15.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetailView = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        self.isLoading = true
        DispatchQueue.main.async {
            NetworkManager.shared.getAppetizers { result in
                self.isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
