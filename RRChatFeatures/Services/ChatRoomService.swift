//
//  ChatRoomService.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation

class ChatRoomService {
    func fetchChatRooms(completion: @escaping (Result<[ChatRoom], Error>) -> Void) {
        // Mock URL for example purposes
        let url = URL(string: "https://api.example.com/chatrooms")!
        
        let task = URLSession.shared.dataTask(with: url, completion: { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data, let chatRooms = try? JSONDecoder().decode([ChatRoom].self, from: data) else {
                // Handle decoding error
                return
            }
            
            completion(.success(chatRooms))
        })
        
        task.resume()
    }
}
