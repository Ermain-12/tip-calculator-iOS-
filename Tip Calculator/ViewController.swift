//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Ermain Paul on 1/5/22.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var billAmountTextField: UITextField!
	@IBOutlet weak var tipAmountLabel: UILabel!
	@IBOutlet weak var tipControl: UISegmentedControl!
	@IBOutlet weak var totalLabel: UILabel!
	@IBOutlet weak var backgroundGradientView: UIView!
	@IBOutlet weak var valueSlider: UISlider!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "Tip Calculator"
	}

	@IBAction func calculateTip(_ sender: Any) {
		// Take the user input from the text field input
		let bill = Double(billAmountTextField.text!) ?? 0.0
		
		// Get the tip amount by multiplying the tip by the tip percentage
		let tipPercentage = [0.15, 0.18, 0.2]
		let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
		let total = bill + tip
		tipAmountLabel.text = String(format: "%.2f", tip)
		totalLabel.text = String(format: "%.2f", total)
		
		print(valueSlider.value)
	}
	
}

