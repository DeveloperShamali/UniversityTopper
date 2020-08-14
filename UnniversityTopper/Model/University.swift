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
        
           //University has Schools
            let vidyaMandir = School()
            vidyaMandir.name = "vidya Mandir"
            
           //Every School has Division consider fifth and sixth
            //School 1 Div 1
            let fifth = Division()
            fifth.name = "5th"
           
            //Every Division has Students
            //Student 1
            let shamali = Student(name: "Shamali", gender: .female, rollNumber: 20, percentage: 76)
            //Student 2
            let pu = Student(name: "Priya", gender: .female, rollNumber: 34, percentage: 56)
            fifth.students = ["shamali":shamali,"pu":pu]
            
            //Divison 2
            let sixth = Division()
            sixth.name = "6th"
            //Div 2 Stu 1
            let bandu = Student(name: "Bandu", gender: .male, rollNumber: 6, percentage: 35)
            //Div 2 Stu 2
            let gundu = Student(name: "Gundu", gender: .male, rollNumber: 76, percentage: 56)
            sixth.students = ["bandu":bandu,"gundu":gundu]
            
            
            //School 2 Div 1
            let seventh = Division()
            seventh.name = "7th"
            //Div 1 Stu 1
            let rohit = Student(name: "Rohit", gender: .male, rollNumber: 45, percentage: 90)
            let pankaj = Student(name: "Pankaj", gender: .male, rollNumber: 87, percentage: 96)
            seventh.students = ["rohit":rohit,"pankaj":pankaj]

            
            //School 2 Div 2
            let eighth = Division()
            eighth.name = "8th"
            //Div 2 Stu 2
            let pinky = Student(name: "Arundhati", gender: .female, rollNumber: 12, percentage: 78)
            let seema = Student(name: "Seema", gender: .female, rollNumber: 32, percentage: 56)
            eighth.students = ["seema":seema,"pinky":pinky]
            
            vidyaMandir.divisions = [fifth,eighth]
            
            let pankajMandir = School()
            pankajMandir.name = "pankaj Mandir"
            pankajMandir.divisions = [sixth,seventh]
            
            self.schools = [vidyaMandir,pankajMandir]
            
        
        
        let testDict = ["A":vidyaMandir.divisions,"B":pankajMandir.divisions]
        
        
        let myDivisionsArray = testDict["B"]
        print("My Division array is \(myDivisionsArray!) array of division.")
        
        
        
        
        
    }
    
    
    func getTopper() -> Student? {
        var topper:Student?
        var topperPercentage = 0
        
        
        for school in schools {
            print(school.name!)
            for division in school.divisions {
                print(division.name!)
                for  (_,student) in division.students {
                    
                    if student.percentage! > topperPercentage {
                        topper = student
                        topperPercentage = student.percentage!
                    }
                    
                }
            }
        }
        
        
        return topper
    }
    
    func getDivision() -> Division {
        return self.schools[0].divisions[1]
    }
    
}
