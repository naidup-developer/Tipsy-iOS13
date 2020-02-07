//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Appala Naidu on 07/02/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var bill : Double = 0.0
    var tip : Int = 0
    var splits : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        print("Tip :\(tip) - Splits : \(splits ) - Bill : \(bill )")
        
        
        
        let billWithTip = bill + calTipPercentage(bill: bill, tipPercentage: tip)
        
        let splittedBill = billWithTip / Double(splits)
        
        print("tip :\(calTipPercentage(bill: bill, tipPercentage: tip)) - billWithTip: \(billWithTip ) - Final Bill : \(splittedBill)")
        
        
        
        resultLabel.text = String(format: "%.1f", splittedBill)
        
        descriptionLabel.text = "Split between \(splits) people, with \(tip)% tip."
        
        
        
    }
    
    
    @IBAction func onClickRecalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func calTipPercentage(bill : Double, tipPercentage : Int) -> Double {
        
        let val = bill * Double(tipPercentage)
        
        return val / 100
    }
    
    
}
