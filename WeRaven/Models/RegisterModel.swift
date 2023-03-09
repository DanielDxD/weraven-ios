//
//  RegisterModel.swift
//  WeRaven
//
//  Created by Daniel Lopes on 09/03/23.
//

import Foundation

struct RegisterBody: Codable {
    var email: String
    var firstName: String
    var lastName: String
    var birthdate: String
    var username: String
    var password: String
}
