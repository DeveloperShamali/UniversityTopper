//
//  Person.swift
//  UnniversityTopper
//
//  Created by Shamali Patil on 13/08/2020.
//  Copyright © 2020 Shamali Patil. All rights reserved.
//

import Foundation

enum Gender:String {
    case male = "Male"
    case female = "Female"
}

class Person {
    var name:String?
    var gender:Gender?
    
    init(name:String, gender:Gender) {
        self.name = name
        self.gender = gender
    }
}
