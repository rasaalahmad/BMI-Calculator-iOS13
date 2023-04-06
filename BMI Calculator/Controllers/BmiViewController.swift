//
//  BmiViewController.swift
//  BMI Calculator
//
//  Created by Rasaal Ahmad on 06/04/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class BmiViewController: UIViewController {
    var bmiValue = ""
    var advice = ""
    var color = UIColor()
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = bmiValue
        view.backgroundColor = color
        adviceLabel.text = advice
        // Do any additional setup after loading the view.
    }
    

    @IBAction func reCalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
