//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Omar Assidi on 28/11/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var bmi: Bmi!
    override func viewDidLoad() {
        super.viewDidLoad()
        let bmiFormatted = String(format: "%.1f", bmi.value)
        resultLabel.text = bmiFormatted
        adviceLabel.text = bmi.advice
        view.backgroundColor = getColor()
        
    }
    
    private func getColor() -> UIColor {
        let color: UIColor
        if bmi.category == .underweight {
            color = .green
        } else if bmi.category == .normalWeight {
            color = .blue
        } else {
            color = .red
        }
        return color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true , completion: nil)
    }
    
    
}
