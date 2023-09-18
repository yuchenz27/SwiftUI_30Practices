//
//  Alert.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/15.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    // Appetizer
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There is an issue connecting to the server."),
                                      dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid."),
                                       dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request."),
                                            dismissButton: .default(Text("OK")))
    
    static let emptyField = AlertItem(title: Text("Form Error"),
                                      message: Text("Please fill out all empty fields in the form."),
                                      dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Form Error"),
                                    message: Text("Please enter an valid email address."),
                                    dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                           message: Text("Your profile information has been saved."),
                                           dismissButton: .default(Text("OK")))
                                           
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                           message: Text("There was an error saving or retrieving your profile."),
                                           dismissButton: .default(Text("OK")))
}
