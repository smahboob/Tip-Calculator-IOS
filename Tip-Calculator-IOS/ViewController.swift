//  ViewController.swift
//  Tip-Calculator
//
//  Created by Saad Mahboob on 7/15/20.
//  Copyright © 2020 Saad Mahboob. All rights reserved.

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate {

    @IBOutlet weak var textFiled: UITextField!
    @IBOutlet weak var slider: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var plusSign: UILabel!
    @IBOutlet weak var equalSign: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var slider2: UISegmentedControl!
    @IBOutlet weak var dollarSign: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFiled.font = UIFont(name: textFiled.font!.fontName, size: 40)
        textFiled.delegate = self
        textFiled.becomeFirstResponder()

    }
    
    @IBAction func pressed(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        textFiled.font = UIFont(name: textFiled.font!.fontName, size: 50)

        let billAmount = Double(textFiled.text!) ?? 0
        let percentages = [0.1,0.2,0.3]
        
        let tipIndex = slider.selectedSegmentIndex
        
        let tip = billAmount * percentages[tipIndex]
        let total = billAmount + tip
        
        tipLabel.text   = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        let indexOfPeople = slider2.selectedSegmentIndex
        
        if(indexOfPeople == 0){
            let newBill = total / 2
            detailLabel.text = String(format: "$%.2f each", newBill)
        }
        else if (indexOfPeople == 1){
            let newBill = total / 3
            detailLabel.text = String(format: "$%.2f each", newBill)
        }
        
        else{
            let newBill = total / 4
            detailLabel.text = String(format: "$%.2f each", newBill)
        }
        
    }
}




