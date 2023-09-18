//
//  AccountView.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/15.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section("Personal Info") {
                    TextField("First Name", text:$viewModel.user.firstName)
                    TextField("Last Name", text:$viewModel.user.lastName)
                    TextField("Email", text:$viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthdate", selection:$viewModel.user.birthdate, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section("Requests") {
                    Toggle("Extra Napkins", isOn:$viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn:$viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: Color("brandPrimary")))
            }
            .navigationTitle("Account")
            .onAppear {
                viewModel.retrieveUser()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}
