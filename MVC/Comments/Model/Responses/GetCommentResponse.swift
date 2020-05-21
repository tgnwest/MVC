//
//  GetCommentResponse.swift
//  MVC
//
//  Created by Alex Tregubov on 21.05.2020.
//  Copyright © 2020 Alex Tregubov. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    
    typealias JSON = [String: AnyObject]
    
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
    
}
