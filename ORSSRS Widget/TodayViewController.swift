//
//  TodayViewController.swift
//  ORSSRS Widget
//
//  Created by maz on 2016. 7. 21..
//  Copyright © 2016년 maz. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    @IBAction func onORSClicked(sender: AnyObject) {
    }
    @IBAction func onSRSClicked(sender: AnyObject) {
    }
    @IBAction func onCheckinClicked(sender: AnyObject) {
    }
    @IBAction func onRetroClicked(sender: AnyObject) {
    }
}
