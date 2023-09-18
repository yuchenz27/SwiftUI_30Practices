//
//  User.swift
//  Practice06_AppetizerOrdering
//
//  Created by Yuchen Zhang on 2023/9/18.
//

import SwiftUI

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
