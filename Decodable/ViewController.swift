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
        print("START \n baby object has been initialized: \(baby != nil)")
        print(baby?.name as Any)
        print(baby?.age as Any)
        print(baby?.description as Any)
        print(baby?.saintDay as Any)
        print("END_____________________ \n")
        
        let babyWithAgeZero = NetworkingService().getBabyWithAgeZero()
        print("START \n babyWithAgeZero object has been initialized: \(babyWithAgeZero != nil)")
        print(babyWithAgeZero?.name as Any)
        print(babyWithAgeZero?.age as Any)
        print(babyWithAgeZero?.description as Any)
        print(babyWithAgeZero?.saintDay as Any)
        print("END_____________________ \n")

        let babyWithNoDescriptionKey = NetworkingService().getBabyWithNoDescriptionKey()
        print("START \n babyWithNoDescription object has been initialized: \(babyWithNoDescriptionKey != nil)")
        print(babyWithNoDescriptionKey?.name as Any)
        print(babyWithNoDescriptionKey?.age as Any)
        print(babyWithNoDescriptionKey?.description as Any)
        print(babyWithNoDescriptionKey?.saintDay as Any)
        print("END_____________________ \n")

        let babyJsonWithNoNameKey = NetworkingService().getBabyJsonWithNoNameKey()
        print("START \n babyJsonWithNoNameKey object has been initialized: \(babyJsonWithNoNameKey != nil)")
        print(babyJsonWithNoNameKey?.name as Any)
        print(babyJsonWithNoNameKey?.age as Any)
        print(babyJsonWithNoNameKey?.description as Any)
        print(babyJsonWithNoNameKey?.saintDay as Any)
        print("END_____________________ \n")
    }
}



