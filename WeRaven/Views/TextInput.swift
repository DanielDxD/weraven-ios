//
//  TextInput.swift
//  WeRaven
//
//  Created by Daniel Lopes on 09/03/23.
//

import SwiftUI

enum InputType {
    case email, name
}

struct TextInput: View {
    
    @Binding var text: String
    let placeholder: String
    var type: InputType = .name
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.gray)
            }
            TextField("", text: $text)
                .frame(height: 45)
                .foregroundColor(Color("Background"))
                .autocapitalization(type == .email ? .none : .words)
                .autocorrectionDisabled(true)
                .keyboardType(type == .email ? .emailAddress : .default)
        }
        .padding(.horizontal, 10)
        .background(Color("Text"))
        .cornerRadius(5)
    }
}

struct TextInput_Previews: PreviewProvider {
    
    @State static var text: String = ""
    
    static var previews: some View {
        TextInput(text: $text, placeholder: "E-mail", type: .email)
    }
}
