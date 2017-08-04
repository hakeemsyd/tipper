//
//  SettingsViewController.swift
//  tipper
//
//  Created by Hakeem on 8/3/17.
//  Copyright © 2017 hakeem. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTip: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onDefaultTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTip.selectedSegmentIndex, forKey: Constants.KEY_DEFAULT_TIP)
        defaults.synchronize()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let tipIdx = defaults.integer(forKey: Constants.KEY_DEFAULT_TIP)
        defaultTip.selectedSegmentIndex = tipIdx
    }
}
