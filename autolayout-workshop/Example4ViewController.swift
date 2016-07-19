//
//  Example4ViewController.swift
//  autolayout-workshop
//
//  Created by Michał Kasprzyk on 7/19/16.
//  Copyright © 2016 Michał Kasprzyk. All rights reserved.
//

import UIKit

class Example4ViewController: UIViewController {
    
    let firstView = UIView()
    let secondView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        firstViewConstraintsUsingLayoutAnchor()
        secondViewConstraintsUsingLayoutConstraint()
    }
    
    private func setupViews() {
        firstView.backgroundColor = .red()
        firstView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstView)
        secondView.backgroundColor = .yellow()
        secondView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondView)
    }
    
    private func firstViewConstraintsUsingLayoutAnchor() {
        let margins = view.layoutMarginsGuide
        firstView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        firstView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        firstView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        firstView.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
    }
    
    private func secondViewConstraintsUsingLayoutConstraint() {
        let topConstraint = NSLayoutConstraint(item: secondView, attribute: .top, relatedBy: .equal, toItem: firstView, attribute: .bottom, multiplier: 1.0, constant: 8)
        let leftConstraint = NSLayoutConstraint(item: secondView, attribute: .leading, relatedBy: .equal, toItem: firstView, attribute: .leading, multiplier: 1.0, constant: 0)
        let rightConstraint = NSLayoutConstraint(item: secondView, attribute: .trailing, relatedBy: .equal, toItem: firstView, attribute: .trailing, multiplier: 1.0, constant: 0)
        let heightConstraint = NSLayoutConstraint(item: secondView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100)
        NSLayoutConstraint.activate([topConstraint, leftConstraint, rightConstraint, heightConstraint])
    }
}
