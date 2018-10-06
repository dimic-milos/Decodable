//
//  Baby.swift
//  Decodable
//
//  Created by Milos Dimic on 10/4/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import Foundation

class Baby {
    
    enum InitError: Error {
        case ageValueIsZero
    }
    
    var name: String
    var age: Int
    var description: String? = "Initial description"
    var saintDay: String?
    
    required init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        // name
        name = try values.decode(String.self, forKey: .name)
        
        // age (use try? to please the BE and make parsing possible with two different types)
        if let ageString = try? values.decode(String.self, forKey: .age), let ageInt = Int(ageString) {
            age = ageInt
        } else {
            age = try values.decode(Int.self, forKey: .age)
        }
        
        // description (decodeIfPresent will assign value NIL even if no key exists in parsed json)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        
        // saintDay
        saintDay = try values.decodeIfPresent(String.self, forKey: .saintDay)

        // init condition
        if age == 0 {
            throw InitError.ageValueIsZero
        }
        
    }
}

// MARK: - Decodable

extension Baby : Decodable {
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case age = "age"
        case description = "description"
        case saintDay = "saint_day"
    }
}
