//
//  Student.swift
//  UnniversityTopper
//
//  Created by Shamali Patil on 13/08/2020.
//  Copyright © 2020 Shamali Patil. All rights reserved.
//

import Foundation


class Student: Person {
    var rollNumber : Int?
    var percentage : Int?
    
    init(name: String, gender: Gender,rollNumber: Int, percentage: Int) {
        super.init(name: name, gender: gender)
        self.rollNumber = rollNumber
        self.percentage = percentage
    }
}
