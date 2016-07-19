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
    
    let thirdView = UIView()
    let fourthView = UIView()
    
    // Layout guides
    let leadingGuide = UILayoutGuide()
    let centerGuide = UILayoutGuide()
    let trailingGuide = UILayoutGuide()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        firstViewConstraintsUsingLayoutAnchor()
        secondViewConstraintsUsingLayoutConstraint()
        setupLayoutGuides()
        setupBottomLayout()
    }
    
    private func setupViews() {
        firstView.backgroundColor = .red()
        firstView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstView)
        secondView.backgroundColor = .yellow()
        secondView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondView)
        thirdView.backgroundColor = .blue()
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(thirdView)
        fourthView.backgroundColor = .green()
        fourthView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fourthView)
    }
    
    private func firstViewConstraintsUsingLayoutAnchor() {
        let margins = view.layoutMarginsGuide
        firstView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        firstView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        firstView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 8).isActive = true
        firstView.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
    }
    
    private func secondViewConstraintsUsingLayoutConstraint() {
        let topConstraint = NSLayoutConstraint(item: secondView, attribute: .top, relatedBy: .equal, toItem: firstView, attribute: .bottom, multiplier: 1.0, constant: 8)
        let leftConstraint = NSLayoutConstraint(item: secondView, attribute: .leading, relatedBy: .equal, toItem: firstView, attribute: .leading, multiplier: 1.0, constant: 0)
        let rightConstraint = NSLayoutConstraint(item: secondView, attribute: .trailing, relatedBy: .equal, toItem: firstView, attribute: .trailing, multiplier: 1.0, constant: 0)
        let heightConstraint = NSLayoutConstraint(item: secondView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100)
        NSLayoutConstraint.activate([topConstraint, leftConstraint, rightConstraint, heightConstraint])
    }
    
    private func setupLayoutGuides() {
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(centerGuide)
        view.addLayoutGuide(trailingGuide)
    }
    
    private func setupBottomLayout() {
        let margin = view.layoutMarginsGuide
        leadingGuide.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        leadingGuide.bottomAnchor.constraint(equalTo: margin.bottomAnchor).isActive = true
        leadingGuide.trailingAnchor.constraint(equalTo: thirdView.leadingAnchor).isActive = true
        thirdView.bottomAnchor.constraint(equalTo: margin.bottomAnchor).isActive = true
        thirdView.trailingAnchor.constraint(equalTo: centerGuide.leadingAnchor).isActive = true
        thirdView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        thirdView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        centerGuide.widthAnchor.constraint(equalTo: leadingGuide.widthAnchor).isActive = true
        centerGuide.bottomAnchor.constraint(equalTo: margin.bottomAnchor).isActive = true
        centerGuide.trailingAnchor.constraint(equalTo: fourthView.leadingAnchor).isActive = true
        fourthView.bottomAnchor.constraint(equalTo: margin.bottomAnchor).isActive = true
        fourthView.widthAnchor.constraint(equalTo: thirdView.widthAnchor).isActive = true
        fourthView.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor).isActive = true
        fourthView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        trailingGuide.widthAnchor.constraint(equalTo: centerGuide.widthAnchor).isActive = true
        trailingGuide.bottomAnchor.constraint(equalTo: margin.bottomAnchor).isActive = true
        trailingGuide.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
    }
}
