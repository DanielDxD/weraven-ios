//
//  RegisterViewModel.swift
//  WeRaven
//
//  Created by Daniel Lopes on 09/03/23.
//

import Foundation

public class RegisterViewModel: LoginViewModel {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var birthdate: Date = Date()
    @Published var username: String = ""
    @Published var confirmPassword: String = ""
}
