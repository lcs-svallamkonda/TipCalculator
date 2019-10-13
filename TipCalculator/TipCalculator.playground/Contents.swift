import UIKit

// Text Fields
let billAmount = UITextField()
let tipPercentage = UITextField()
let splitBetweenHowManyPeople = UITextField()

// Simulate user input
billAmount.text = "100"
tipPercentage.text = "15"
splitBetweenHowManyPeople.text = "2"

// Get actual strings from each text field
//Force unwrap the optional values
let billAmountAsString = billAmount.text!
let tipPercentageAsString = tipPercentage.text!
let splitBetweenHowManyPeopleAsString = splitBetweenHowManyPeople.text!

//Turn strings into Double Values
let billAmountAsDouble = Double(billAmountAsString)!
let tipPercentageAsDouble = Double(tipPercentageAsString)!
let splitBetweenHowManyPeopleAsDouble = Double(splitBetweenHowManyPeopleAsString)!

//Calculate the tip
let tipAmountInDollars = billAmountAsDouble*tipPercentageAsDouble/100
let tipAmountPerPerson = tipAmountInDollars/splitBetweenHowManyPeopleAsDouble
