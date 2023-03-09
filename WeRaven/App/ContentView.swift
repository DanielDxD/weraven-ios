//
//  ContentView.swift
//  WeRaven
//
//  Created by Daniel Lopes on 07/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("token") var token: String = ""
    @AppStorage("verifyEmail") var verifyEmail: String = ""
    @AppStorage("darkTheme") var darkTheme: Bool = false
    
    var body: some View {
        if token.isEmpty {
            if verifyEmail.isEmpty {
                LoginView()
                    .preferredColorScheme(darkTheme ? .dark : .light)
            } else {
                VerifyView()
                    .preferredColorScheme(darkTheme ? .dark : .light)
            }
        } else {
            MainView()
                .preferredColorScheme(darkTheme ? .dark : .light)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
