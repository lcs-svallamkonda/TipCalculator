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
    
    //MARK: Initializers
    
    
    //MARK: Methods (functions) - behaviours
    
    //runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        // Get actual strings from each text field
        //Force unwrap the optional values
        let billAmountAsString = billAmount.text!
        let tipPercentageAsString = tipPercentage.text!
        let splitBetweenThisManyPeopleAsString = splitBetweenThisManyPeople.text!
        
        //Turn strings into Double Values
        let billAmountAsDouble = Double(billAmountAsString)!
        let tipPercentageAsDouble = Double(tipPercentageAsString)!
        let splitBetweenThisManyPeopleAsDouble = Double(splitBetweenThisManyPeopleAsString)!
        
        //Turn tip percentage into a percent
        let tipPercentageAsPercent = tipPercentageAsDouble/100
        
        //Calculate the Tip
        let tipAmountInDollars = billAmountAsDouble*tipPercentageAsPercent
        let tipAmountPerPerson = tipAmountInDollars/splitBetweenThisManyPeopleAsDouble
    }


}

