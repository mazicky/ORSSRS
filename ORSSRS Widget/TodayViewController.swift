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
        extensionContext?.openURL(NSURL(string: "http://j.mp/orsac2")!, completionHandler: nil)
    }
    @IBAction func onSRSClicked(sender: AnyObject) {
        extensionContext?.openURL(NSURL(string: "http://j.mp/srsac2")!, completionHandler: nil)
    }
    @IBAction func onCheckinClicked(sender: AnyObject) {
        extensionContext?.openURL(NSURL(string: "https://docs.google.com/a/flyingloft.com/forms/d/1QZ9e1THiz4MBMzkX-a57P0KG72AccyJxtivr504Ho44/viewform?c=0&w=1")!, completionHandler: nil)
    }
    @IBAction func onRetroClicked(sender: AnyObject) {
        extensionContext?.openURL(NSURL(string: "fb://profile")!, completionHandler: nil)
    }
}
