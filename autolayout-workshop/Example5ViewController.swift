//
//  Example5ViewController.swift
//  autolayout-workshop
//
//  Created by Michał Kasprzyk on 7/19/16.
//  Copyright © 2016 Michał Kasprzyk. All rights reserved.
//

import UIKit

class Example5ViewController: UIViewController {
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    var changed: Bool = false
    
    override func updateViewConstraints() {
        print(#function)
        super.updateViewConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        print(#function)
        super.viewWillLayoutSubviews()
    }
    
    @IBAction func changeConstraint(sender: UIButton) {
        heightConstraint.constant = changed ? 120 : 240
        changed = !changed
    }
}
