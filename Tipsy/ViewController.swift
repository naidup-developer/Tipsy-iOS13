//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitDisplayLabel: UILabel!
    @IBOutlet weak var splitStepper: UIStepper!
    
    var bill : Double?
    var tipSelected : Int?
    var splitsChoosen : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func onSelectTip(_ sender: UIButton) {
        
        print(sender.tag)
        
        switch sender.tag {
        case 0:
            tipSelected = 0
            break
        case 1:
            tipSelected = 10
            break
        case 2:
            tipSelected = 20
            break
        default:
            tipSelected = 0
            break
        }
    }
    
    
    @IBAction func onChangeSplit(_ sender: UIStepper) {
        
        splitsChoosen = Int(String(format: "%.f", sender.value))!
        splitDisplayLabel.text = String(format: "%.f", sender.value)
        //print(sender.value)
    }
    
    
    @IBAction func onClickCalculate(_ sender: UIButton) {
        
        bill = Double(billTextField.text!)!
        
       
        performSegue(withIdentifier: "toResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult"
        {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bill = bill!
            resultVC.tip = tipSelected!
            resultVC.splits = splitsChoosen
            
            self.present(resultVC,animated: true,completion: nil)
            
        }
    }
}

