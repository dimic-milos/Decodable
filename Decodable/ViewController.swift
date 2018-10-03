//
//  ViewController.swift
//  Decodable
//
//  Created by Milos Dimic on 10/3/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baby = NetworkingService().getBaby()
        
        print(baby?.name as Any)
        print(baby?.age as Any)
        print(baby?.description as Any)
    }
}

class Baby: Decodable {
    
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
    }
}

class NetworkingService {
    
    func getBaby() -> Baby? {
        let filePath = Bundle(for: type(of: self)).path(forResource: "BabyJson", ofType: "txt")!
        let jsonString = try! String(contentsOfFile: filePath, encoding: .utf8)
        let data = Data(jsonString.utf8)
        
        do {
            let baby = try JSONDecoder().decode(Baby.self, from: data)
            return baby
        }
        catch {
            print(error)
            return nil
        }
    }
}

