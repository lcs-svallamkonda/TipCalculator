//
//  ViewController.swift
//  TipCalculator
//
//  Created by Vallamkonda, Sunaina on 2019-10-13.
//  Copyright © 2019 Vallamkonda, Sunaina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var splitBetweenThisManyPeople: UITextField!
    @IBOutlet weak var totalTip: UILabel!
    @IBOutlet weak var tipPerPerson: UILabel!
    //MARK: Initializers
    
    
    //MARK: Methods (functions) - behaviours
    
    //runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Will be used to calculate and display answers
    @IBAction func calculateTip(_ sender: Any) {
        // Get actual strings from each text field, Force unwrap the optional values
        let billAmountAsString = billAmount.text!
        let tipPercentageAsString = tipPercentage.text!
        let splitBetweenThisManyPeopleAsString = splitBetweenThisManyPeople.text!
        
        //Turn strings into Double Values
        let billAmountAsDouble = Double(billAmountAsString)!
        let tipPercentageAsDouble = Double(tipPercentageAsString)! / 100
        let splitBetweenThisManyPeopleAsDouble = Double(splitBetweenThisManyPeopleAsString)!
        
        //Calculate the Tip
        let tipAmountInDollars = billAmountAsDouble*tipPercentageAsDouble
        let tipAmountPerPerson = tipAmountInDollars/splitBetweenThisManyPeopleAsDouble
        
        //Display Values
        //totalTip.text = String(tipAmountInDollars)
       // totalTip.text = "$\(tipAmountInDollars)"
        totalTip.text = String(format: "$%.2f", tipAmountInDollars)
       // tipPerPerson.text = String(tipAmountPerPerson)
        //tipPerPerson.text = "$\(tipAmountPerPerson)"
        tipPerPerson.text = String(format: "$%.2f", tipAmountPerPerson)
        
    }
    
    
}




