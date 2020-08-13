//
//  ViewController.swift
//  UnniversityTopper
//
//  Created by Shamali Patil on 13/08/2020.
//  Copyright © 2020 Shamali Patil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let unni = Univesity(name: "Shivaji")
        let universityTopper = unni.getTopper()
        print("\(universityTopper!.name!) is the University topper and percentage is \(universityTopper!.percentage)")
        

    }


}

