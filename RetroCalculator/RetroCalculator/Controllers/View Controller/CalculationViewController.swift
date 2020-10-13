//
//  CalculatorViewController.swift
//  RetroCalculator
//
//  Created by Owen Barrott on 10/12/20.
//  Copyright © 2020 Owen Barrott. All rights reserved.
//

import UIKit

class CalculationViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    // MARK: - Properties
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0
    var isOperationDisplayed = false
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    // MARK: - Actions
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        createDisplayNumber(senderValue: sender.tag - 1)
    }
    
    @IBAction func operationButtons(_ sender: UIButton) {
        performOperation(senderValue: sender.tag)
    }
    
    // MARK: - Class Functions
    func setupViews() {
        self.view.backgroundColor = .black
    }
    
    func createDisplayNumber(senderValue: Int) {
            if displayLabel.text == "0" {
                displayLabel.text = ""
            }
            if performingMath == true {
                displayLabel.text = String(senderValue)
                numberOnScreen = Double(displayLabel.text!)!
                performingMath = false
            } else {
                displayLabel.text = displayLabel.text! + String(senderValue)
                numberOnScreen = Double(displayLabel.text!)!
            }
            isOperationDisplayed = false
    }
    
    func performOperation(senderValue: Int) {
        if displayLabel.text != "" && senderValue != 16 && senderValue != 11 {
            if isOperationDisplayed == false {
                previousNumber = Double(displayLabel.text!)!
                
                if senderValue == 12 {
                    displayLabel.text = "/"
                }
                if senderValue == 13 {
                    displayLabel.text = "x"
                }
                if senderValue == 14 {
                    displayLabel.text = "-"
                }
                if senderValue == 15 {
                    displayLabel.text = "+"
                }
                isOperationDisplayed = true
                operation = senderValue
                performingMath = true
            }
        } else if senderValue == 16 {
            if operation == 12 {
                displayLabel.text = (previousNumber / numberOnScreen).clean
            }
            if operation == 13 {
                displayLabel.text = (previousNumber * numberOnScreen).clean
            }
            if operation == 14 {
                displayLabel.text = (previousNumber - numberOnScreen).clean
            }
            if operation == 15 {
                displayLabel.text = (previousNumber + numberOnScreen).clean
            }
            
        } else if senderValue == 11 {
            displayLabel.text = "0"
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
            isOperationDisplayed = false
        }
    }
}
