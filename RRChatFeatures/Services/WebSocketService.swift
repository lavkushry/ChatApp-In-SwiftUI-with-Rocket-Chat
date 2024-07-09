//
//  WebSocketService.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//
import Foundation

class WebSocketService: ObservableObject {
    private var webSocketTask: URLSessionWebSocketTask?
    
    init() {
        let url = URL(string: "wss://chat.example.com/socket")!
        webSocketTask = URLSession.shared.webSocketTask(with: url)
        webSocketTask?.resume()
    }
    
    func receiveMessages(completion: @escaping (Result<String, Error>) -> Void) {
        webSocketTask?.receive { result in
            switch result {
            case .failure(let error):
                completion(.failure(error))
            case .success(let message):
                switch message {
                case .string(let text):
                    completion(.success(text))
                case .data(let data):
                    completion(.success(String(data: data, encoding: .utf8) ?? ""))
                @unknown default:
                    fatalError()
                }
                self.receiveMessages(completion: completion)
            }
        }
    }
    
    func sendMessage(_ text: String, completion: @escaping (Error?) -> Void) {
        let message = URLSessionWebSocketTask.Message.string(text)
        webSocketTask?.send(message) { error in
            completion(error)
        }
    }
}
