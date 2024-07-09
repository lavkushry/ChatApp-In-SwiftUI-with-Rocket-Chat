//
//  UserService.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation

class UserService {
    func fetchUserProfile(completion: @escaping (Result<User, Error>) -> Void) {
        // Mock URL for example purposes
        let url = URL(string: "https://api.example.com/user/profile")!
        
        let task = URLSession.shared.dataTask(with: url, completion: { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data, let user = try? JSONDecoder().decode(User.self, from: data) else {
                // Handle decoding error
                return
            }
            
            completion(.success(user))
        })
        
        task.resume()
    }
}
