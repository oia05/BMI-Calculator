//
//  Bmi.swift
//  BMI Calculator
//
//  Created by Omar Assidi on 28/11/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

struct Bmi {
    var value: Float
    var advice: String
    var category: BmiCategory
    
    init (value: Float, advice: String, category: BmiCategory) {
        self.value = value
        self.advice = advice
        self.category = category
    }
    
    init() {
        value = 0.0
        advice = ""
        category = .Undetermined
    }
}

enum BmiCategory {
    case underweight
    case normalWeight
    case overweight
    case Undetermined
}
