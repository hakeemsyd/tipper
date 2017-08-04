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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        billField.becomeFirstResponder();
        print("Settings view will appear")
        let defaults = UserDefaults.standard
        let tipIdx = defaults.integer(forKey: Constants.KEY_DEFAULT_TIP)
        tipControl.selectedSegmentIndex = tipIdx
        
        loadTip()
    }


    @IBAction func calculateTip(_ sender: AnyObject) {
        loadTip()
    }
    
    func loadTip(){
        let tipPercentages = [0.18,0.2,0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex];
        let total = bill + tip;
        
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        
        tipLabel.text = String.init(format: "%@%.2f", currencySymbol, tip);
        totalLabel.text = String.init(format: "%@%.2f", currencySymbol, total);
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
}

