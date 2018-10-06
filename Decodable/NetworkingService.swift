//
//  NetworkingService.swift
//  Decodable
//
//  Created by Milos Dimic on 10/4/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import Foundation

class NetworkingService {
    
    init() {
        print(" \n NetworkingService INIT")
    }
    
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
    
    func getBabyWithAgeZero() -> Baby? {
        let filePath = Bundle(for: type(of: self)).path(forResource: "BabyJsonWithAgeZero", ofType: "txt")!
        let jsonString = try! String(contentsOfFile: filePath, encoding: .utf8)
        let data = Data(jsonString.utf8)
        
        do {
            let baby = try JSONDecoder().decode(Baby.self, from: data)
            return baby
        }
        catch {
            print("ERROR: \(error)")
            return nil
        }
    }
    
    func getBabyWithNoDescriptionKey() -> Baby? {
        let filePath = Bundle(for: type(of: self)).path(forResource: "BabyJsonWithNoDescriptionKey", ofType: "txt")!
        let jsonString = try! String(contentsOfFile: filePath, encoding: .utf8)
        let data = Data(jsonString.utf8)
        
        do {
            let baby = try JSONDecoder().decode(Baby.self, from: data)
            return baby
        }
        catch {
            print("ERROR: \(error)")
            return nil
        }
    }
    
    func getBabyJsonWithNoNameKey() -> Baby? {
        let filePath = Bundle(for: type(of: self)).path(forResource: "BabyJsonWithNoNameKey", ofType: "txt")!
        let jsonString = try! String(contentsOfFile: filePath, encoding: .utf8)
        let data = Data(jsonString.utf8)
        
        do {
            let baby = try JSONDecoder().decode(Baby.self, from: data)
            return baby
        }
        catch {
            print("ERROR: \(error)")
            return nil
        }
    }
    
}
