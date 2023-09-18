//
//  AppetizerListView.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/15.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCellView(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetailView = true
                        }
                }
                .listStyle(.plain)
                .navigationTitle("Appetizers")
                .disabled(viewModel.isShowingDetailView)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetailView ? 20 : 0)
            
            if viewModel.isShowingDetailView {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
