//
//  ViewController.swift
//  tipper
//
//  Created by Hakeem on 8/2/17.
//  Copyright © 2017 hakeem. All rights reserved.
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.18,0.2,0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex];
        let total = bill + tip;
        
        tipLabel.text = String.init(format: "$%.2f", tip);
        totalLabel.text = String.init(format: "$%.2f", total);
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello");
        view.endEditing(true);
    }
}
