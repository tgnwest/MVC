//
//  CommentNetworkService.swift
//  MVC
//
//  Created by Alex Tregubov on 21.05.2020.
//  Copyright © 2020 Alex Tregubov. All rights reserved.
//

import Foundation

class CommentNetworkService {
    
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
    
}
