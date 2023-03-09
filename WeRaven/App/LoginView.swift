//
//  LoginView.swift
//  WeRaven
//
//  Created by Daniel Lopes on 08/03/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea(.all)
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 170, height: 150)
                Text("Entre com sua conta")
                    .font(.title2)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
