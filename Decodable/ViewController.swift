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
        print("\n baby object has been initialized: \(baby != nil)")
        print(baby?.name as Any)
        print(baby?.age as Any)
        print(baby?.description as Any)
        print("END \n")
        
        let babyWithAgeZero = NetworkingService().getBabyWithAgeZero()
        print("\n babyWithAgeZero object has been initialized: \(babyWithAgeZero != nil)")
        print(babyWithAgeZero?.name as Any)
        print(babyWithAgeZero?.age as Any)
        print(babyWithAgeZero?.description as Any)
        print("END \n")
        
        let babyWithNoDescription = NetworkingService().getBabyWithNoDescription()
        print("\n babyWithNoDescription object has been initialized: \(babyWithNoDescription != nil)")
        print(babyWithNoDescription?.name as Any)
        print(babyWithNoDescription?.age as Any)
        print(babyWithNoDescription?.description as Any)
        print("END \n")
        
        let babyJsonWithNoNameKey = NetworkingService().getBabyJsonWithNoNameKey()
        print("\n babyJsonWithNoNameKey object has been initialized: \(babyJsonWithNoNameKey != nil)")
        print(babyJsonWithNoNameKey?.name as Any)
        print(babyJsonWithNoNameKey?.age as Any)
        print(babyJsonWithNoNameKey?.description as Any)
        print("END \n")
    }
}



