//
//  TipCalculator.swift
//  TipCalculator-Starter
//
//  Created by Hadia Jalil on 08/10/2019.
//  Copyright © 2019 Hadia Jalil. All rights reserved.
//

import Foundation

class TipCalculator {
    
    var tipPercentage: Double
    var bill: Double
    var totalBill: Double
    var tipValue: Double
    var numberOfPeople: Int
    
    init() {
        self.tipPercentage = 0.0
        self.bill = 0.0
        self.totalBill = 0.0
        self.tipValue = 0.0
        self.numberOfPeople = 1
    }
    
    func calculateBill() {
        self.tipValue = (bill * tipPercentage / 100) / Double(numberOfPeople)
        self.totalBill = (tipValue*2 + bill) / Double(numberOfPeople)
    }
}
