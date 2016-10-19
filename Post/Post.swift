//
//  Post.swift
//  Post
//
//  Created by Martin Kirke on 10/18/16.
//  Copyright © 2016 Ghost. All rights reserved.
//

import Foundation

struct Post {
    
    let username: String
    let text: String
    let timestamp: TimeInterval
    let identifier: UUID
    
    static let kUsername = "username"
    static let kText = "text"
    static let kTimestamp = "timestamp"
    static let kIdentifier = "identifier"
    
    init(username: String, text: String, timestamp: TimeInterval, identifier: UUID = UUID()) {
        
        self.username = username
        self.text = text
        self.identifier = identifier
        self.timestamp = timestamp
    }
    
}

extension Post {
    
    init?(dictionary: [String : Any], identifier: String) {
    
        guard let username = dictionary[Post.kUsername] as? String,
              let text = dictionary[Post.kText] as? String,
              let timestamp = dictionary[Post.kTimestamp] as? Double,
            let identifier = UUID(uuidString: identifier) else { return nil }
        
        self.username = username
        self.text = text
        self.timestamp = timestamp
        self.identifier = identifier
        
    }
}
