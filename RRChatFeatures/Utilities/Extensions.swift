//
//  Extensions.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

extension URLSession {
    func dataTask(with url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return dataTask(with: url, completionHandler: completion)
    }
}

extension View {
    func placeholder<Content: View>(when shouldShow: Bool, alignment: Alignment = .leading, content: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            content().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
