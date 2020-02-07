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
        
        let step1 = bill * Double(tip)
        
        let step2 = step1 / 100
        
        let step3 = bill + step2
        
        let finalBill = step3 / Double(splits)
        
        print("step 1 :\(step1) - step 2 : \(step2 ) - step 3 : \(step3 ) - Final Bill : \(finalBill)")
        
        
        
        resultLabel.text = String(format: "%.1f", finalBill)
        
        descriptionLabel.text = "Split between \(splits) people, with \(tip)% tip."
        
        
        
    }
    
    
    @IBAction func onClickRecalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
