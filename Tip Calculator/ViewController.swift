//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Samuel Shih on 9/25/14.
//  Copyright (c) 2014 Samuel Shih. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        // Set starting values
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18,0.2,0.22]
        var userTipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        println(billAmount)
        var tip = billAmount * userTipPercentage
        var total = billAmount + tip
        println(tip)
        tipLabel.text = "$\(tip)"
        totalLabel.text = "\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    

}

