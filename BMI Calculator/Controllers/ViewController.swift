//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bmiComponent = BmiBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var weightBar: UISlider!
    @IBOutlet weak var heightBar: UISlider!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    
    @IBAction func heightProgressBar(_ sender: UISlider) {
        heightValueLabel.text = String(format: "%.1fm", sender.value)
    }
    
    @IBAction func weightProgressBar(_ sender: UISlider) {
        weightValueLabel.text = String(format: "%.1fkg", sender.value)
    }
    
    @IBAction func calculateBmiPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResultView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultView" {
            let destinationView = segue.destination as! BmiViewController
            let bmi = bmiComponent.calculateBmi(weight: weightBar.value, height: heightBar.value)
            destinationView.bmiValue = String(format: "%.1f", bmi.value)
            destinationView.advice = bmi.advice
            destinationView.color = bmi.color
        }
    }
}

