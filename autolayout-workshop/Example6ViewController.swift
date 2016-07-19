//
//  Example6ViewController.swift
//  autolayout-workshop
//
//  Created by Michał Kasprzyk on 7/19/16.
//  Copyright © 2016 Michał Kasprzyk. All rights reserved.
//

import UIKit

class Example6ViewController: UIViewController {
    let simpleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSimpleView()
    }
    
    private func setupSimpleView() {
        simpleView.backgroundColor = .red()
        view.addSubview(simpleView)
        let margin = view.layoutMarginsGuide
        simpleView.centerXAnchor.constraint(equalTo: margin.centerXAnchor).isActive = true
        simpleView.centerYAnchor.constraint(equalTo: margin.centerYAnchor).isActive = true
        simpleView.widthAnchor.constraint(equalTo: margin.widthAnchor).isActive = true
        simpleView.heightAnchor.constraint(equalTo: margin.heightAnchor).isActive = true
    }
}
