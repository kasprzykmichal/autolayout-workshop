//
//  Example8ViewController.swift
//  autolayout-workshop
//
//  Created by Michał Kasprzyk on 7/20/16.
//  Copyright © 2016 Michał Kasprzyk. All rights reserved.
//

import UIKit

class Example8ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var contentViewHeightConstraint: NSLayoutConstraint!
    
    private var changed: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGestureRecognizer()
    }
    
    private func setupGestureRecognizer() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Example8ViewController.tap(sender:)))
        scrollView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc private func tap(sender: UITapGestureRecognizer) {
        changed = !changed
        contentViewHeightConstraint.constant = changed ? 1500 : 150
    }
}
