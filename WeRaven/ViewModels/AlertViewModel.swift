//
//  AlertViewModel.swift
//  WeRaven
//
//  Created by Daniel Lopes on 08/03/23.
//

import Foundation

public class AlertViewModel: ObservableObject {
    @Published var showAlert: Bool = false
    @Published var title: String = ""
    @Published var message: String = ""
}
