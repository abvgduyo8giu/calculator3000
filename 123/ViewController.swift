//
//  ViewController.swift
//  123
//
//  Created by Гость on 30.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var staki: UIStackView!
    @IBOutlet weak var lable: UILabel!
    
    var numberOne = ""
    var numberTwo = ""
    var operand = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonAC.layer.cornerRadius = 30
        
        
    }

    @IBAction func inputNumber(_ sender: UIButton) {
        
        if operand.isEmpty {
            numberOne = numberOne +
                {sender.titleLabel?.text}!
            lable.text = numberOne
        }
        else
        {
            numberTwo = numberTwo +
                {sender.titleLabel?.text}!
            lable.text = numberTwo
        }
        
    }

    @IBAction func inputOperand(_ sender: UIButton) {
        
        operand = sender.titleLabel?.text as!
            String
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        lable.text = "0"
        
        
    }
    
    @IBAction func resltAction(_ sender: UIButton) {
        
        var result = 0.0
        
        switch operand {
            
        case "/":
            result = Double (numberOne)! /
                Double(numberTwo)!
        case "+":
            result = Double (numberOne)! +
                Double(numberTwo)!
        case "-":
            result = Double (numberOne)! -
                Double(numberTwo)!
        case "*":
            result = Double (numberOne)! *
                Double(numberTwo)!
        default:
            break
        }
        if result.truncatingRemainder(dividingBy: 1.0)
            == 0.0 {
            lable.text = String(Int(result))
        }
        else
        {
            lable.text = String(result)
        }
        
    }
    
}

