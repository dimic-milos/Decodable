//
//  Baby.swift
//  Decodable
//
//  Created by Milos Dimic on 10/4/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import Foundation

class Baby: Decodable {
    
    enum InitError: Error {
        case failedInit
    }
    
    var name: String
    var age: Int
    var description: String = "Default description"
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case age = "age"
        case description = "description"
    }
    
    required init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        age = try values.decode(Int.self, forKey: .age)
        
        if let description = try values.decode(String?.self, forKey: .description) {
            self.description = description
        } else {
            self.description = "No description parsed"
        }
        
        if age == 0 {
            throw InitError.failedInit
        }
        
    }
}
