//
//  Network.swift
//  WeRaven
//
//  Created by Daniel Lopes on 09/03/23.
//

import Foundation

struct DefaultResponse: Decodable {
    var message: String?
}

public class Network {
    static let baseURL: String = "http://localhost:5005"
    
    func registerUser(firstName: String, lastName: String, email: String, birthdate: Date, username: String, password: String) async -> DefaultResponse {
        guard let url = URL(string: "\(Network.baseURL)/v1/users") else {
            return DefaultResponse(message: "Ocorreu um erro. Tente novamente ou entre em contato com nosso suporte.")
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.string(from: birthdate)
        
        do {
            let encoded = try JSONEncoder().encode(RegisterBody(email: email, firstName: firstName, lastName: lastName, birthdate: date, username: username, password: password))
            urlRequest.httpBody = encoded
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
                       
           if (response as? HTTPURLResponse)?.statusCode != 201 || (response as? HTTPURLResponse)?.statusCode != 200 {
               let decoded = try JSONDecoder().decode(DefaultResponse.self, from: data)
               
               return decoded
           }
           
           return DefaultResponse(message: nil)
        } catch {
            return DefaultResponse(message: "Ocorreu um erro. Tente novamente ou entre em contato com nosso suporte.")
        }
    }
}
