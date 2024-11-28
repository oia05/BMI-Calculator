//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    private var bmiBrain = BmiBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightChanged(_ sender: UISlider) {
        bmiBrain.set(height: sender.value)
        setHeightText()
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        bmiBrain.set(weight: sender.value)
        setWeightText()
    }
    
    private func setHeightText() {
        let height = bmiBrain.getHeight()
        let heightFormatted = String(format: "%.2f", height)
        heightLabel.text = "\(heightFormatted) m"
    }
    
    private func setWeightText() {
        let weight = bmiBrain.getWeight()
        let weightFormatted = String(format: "%.0f", weight)
        weightLabel.text = "\(weightFormatted) Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bmiBrain.calculateBmi()
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = bmiBrain.getBmi()
        }
    }
}

