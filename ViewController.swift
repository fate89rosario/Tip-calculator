//
//  ViewController.swift
//  prework
//
//  Created by Fate(Nasiba Shamsutdinova)  on 2/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
    //get tip amount by mult. tip persentage
        let tipPercentage = [0.10, 0.15, 0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
       
        tipAmountLabel.text = String(format: "$%.2f", tip)
    //total amount after tip
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}

