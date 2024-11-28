//
//  BmiBrain.swift
//  BMI Calculator
//
//  Created by Omar Assidi on 27/11/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//
import math_h
struct BmiBrain {
    private var bmi: Bmi!
    private var height: Float = 1.50
    private var weight: Float = 100.0
    init() {
        calculateBmi()
    }
    mutating func set(height: Float) {
        self.height = height
    }
    
    mutating func set(weight: Float) {
        self.weight = weight
    }
    
    mutating func calculateBmi() {
        if height != 0.0 {
            let bmiValue = weight / pow(height, 2)
            let advice: String
            let category: BmiCategory
            if bmiValue < 18.5 {
                advice = "Eat More Pies!"
                category = .underweight
            } else if bmiValue < 25 {
                advice = "You're Healthy!"
                category = .normalWeight
            } else {
                advice = "Eat Less Pies!"
                category = .overweight
            }
            self.bmi = Bmi(value: bmiValue, advice: advice, category: category)
        } else {
            self.bmi = Bmi()
        }
    }
    
    func getBmi() -> Bmi {
        return bmi
    }
    
    func getHeight() -> Float {
        return height
    }
    
    func getWeight() -> Float {
        return weight
    }
}
