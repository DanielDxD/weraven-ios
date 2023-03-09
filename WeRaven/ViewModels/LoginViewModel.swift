//
//  LoginViewModel.swift
//  WeRaven
//
//  Created by Daniel Lopes on 08/03/23.
//

import Foundation

public class LoginViewModel: AlertViewModel {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    @Published var loading: Bool = false
}
