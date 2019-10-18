//
//  ViewController.swift
//  SmartTip-Final
//
//  Created by Hadia Jalil on 17/10/2019.
//  Copyright © 2019 Hadia Jalil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var billAmountTextField: UITextField!
  @IBOutlet weak var tipPercentageLabel: UILabel!
  @IBOutlet weak var numberOfPeopleLabel: UILabel!
  @IBOutlet weak var totalTipPerPersonLabel: UILabel!
  @IBOutlet weak var totalBillPerPersonLabel: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  @IBAction func tipPercentageValueChanged(_ sender: UISlider) {
    tipPercentageLabel.text = "\(Int(sender.value))"
  }
  @IBAction func numberOfPeopleValueChanged(_ sender: UISlider) {
    numberOfPeopleLabel.text = "\(Int(sender.value))"
  }
  @IBAction func calculateButtonPressed(_ sender: UIButton) {
    // 1
    let tipCalculator = TipCalculator()
    
    // 2
    tipCalculator.bill = Double(billAmountTextField.text ?? "0.0")!
    tipCalculator.tipPercentage = Double(tipPercentageLabel.text ?? "0.0")!
    tipCalculator.numberOfPeople = Int(numberOfPeopleLabel.text ?? "1")!
    
    // 3
    tipCalculator.calculateBill()
    
    // 4
    totalTipPerPersonLabel.text = "\(tipCalculator.tipValue)"
    totalBillPerPersonLabel.text = "\(tipCalculator.totalBill)"
  }
}

