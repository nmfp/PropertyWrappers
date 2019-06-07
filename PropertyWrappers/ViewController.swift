//
//  ViewController.swift
//  PropertyWrappers
//
//  Created by Nuno Pereira on 07/06/2019.
//  Copyright © 2019 nMfpCoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Before", UserConfig.hasSeenKYC)
        UserConfig.hasSeenKYC = true
        print("After", UserConfig.hasSeenKYC)
    }


}

