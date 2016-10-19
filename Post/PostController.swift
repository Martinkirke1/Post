//
//  PostController.swift
//  Post
//
//  Created by Martin Kirke on 10/18/16.
//  Copyright © 2016 Ghost. All rights reserved.
//

import Foundation

class PostController {
    
    
    
   static let baseURl = URL(string: "https://devmtn-post.firebaseio.com/posts")
    
    static let endpoint = baseURl?.appendingPathExtension("json")

}
