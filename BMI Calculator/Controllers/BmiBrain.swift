//
//  bmiComponents.swift
//  BMI Calculator
//
//  Created by Rasaal Ahmad on 06/04/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BmiBrain{
    func calculateBmi(weight:Float, height:Float)->BMI{
        let value = weight / (height * height)
        
        if value < 18.5{
            return BMI(value: value, advice: "Eat more pies!", color: UIColor.blue)
        }else if value < 24.9 {
            return BMI(value: value, advice: "Fit as Fiddle!", color: UIColor.green)
        }else{
            return BMI(value: value, advice: "Eat less pies", color: UIColor.systemRed)
        }
    }
}
