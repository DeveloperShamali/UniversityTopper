//
//  Unniversity.swift
//  UnniversityTopper
//
//  Created by Shamali Patil on 13/08/2020.
//  Copyright © 2020 Shamali Patil. All rights reserved.
//

import Foundation

class Univesity {
    var name:String?
    var schools = [School]()
    
    init(name:String) {
        self.name = name
        
        
        let vidyaMandir = School()
            vidyaMandir.name = "vidya Mandir"
            
            let fifth = Division()
            fifth.name = "5th"
            let shamali = Student(name: "Shamali", gender: .female, rollNumber: 20, percentage: 76)
            let pu = Student(name: "Priya", gender: .female, rollNumber: 34, percentage: 56)
            fifth.students = [shamali,pu]
            
        
            
            
            let sixth = Division()
            sixth.name = "6th"
            
            let bandu = Student(name: "Bandu", gender: .male, rollNumber: 6, percentage: 35)
            let gundu = Student(name: "Gundu", gender: .male, rollNumber: 76, percentage: 56)
            sixth.students = [bandu,gundu]
            
            
                    
            let seventh = Division()
            seventh.name = "7th"
            let rohit = Student(name: "Rohit", gender: .male, rollNumber: 45, percentage: 90)
            let pankaj = Student(name: "Pankaj", gender: .male, rollNumber: 87, percentage: 96)
            seventh.students = [rohit,pankaj]

            
            
            let eighth = Division()
            eighth.name = "8th"
            let pinky = Student(name: "Arundhati", gender: .female, rollNumber: 12, percentage: 78)
            let seema = Student(name: "Seema", gender: .female, rollNumber: 32, percentage: 56)
            eighth.students = [seema,pinky]
            
            vidyaMandir.divisions = [fifth,eighth]
            
            let pankajMandir = School()
            pankajMandir.name = "pankaj Mandir"
            pankajMandir.divisions = [sixth,seventh]
            
            
            
            self.schools = [vidyaMandir,pankajMandir]
            
        
    }
    
    
    func getTopper() -> Student? {
        var topper:Student?
        var topperPercentage = 0
        
        
        for school in schools {
            print(school.name!)
            for division in school.divisions {
                print(division.name!)
                for  student in division.students {
                    
                    if student.percentage! > topperPercentage {
                        topper = student
                        topperPercentage = student.percentage!
                    }
                    
                }
            }
        }
        
        
        return topper
    }
    
}
