//
//  Example7ViewController.swift
//  autolayout-workshop
//
//  Created by Michał Kasprzyk on 7/19/16.
//  Copyright © 2016 Michał Kasprzyk. All rights reserved.
//

import UIKit

class Example7ViewController: UIViewController {
    
    let firstView = UIView()
    let secondView = UIView()
    let thirdView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        setupGestureRecognizer()
    }
    
    private func setupViews() {
        firstView.backgroundColor = .red()
        firstView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstView)
        secondView.backgroundColor = .blue()
        secondView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondView)
        thirdView.backgroundColor = .yellow()
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(thirdView)
    }
    
    private func setupConstraints() {
        let margin = view.layoutMarginsGuide
        firstView.topAnchor.constraint(equalTo: margin.topAnchor, constant: 8).isActive = true
        firstView.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        firstView.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 8).isActive = true
        secondView.heightAnchor.constraint(equalTo: firstView.heightAnchor).isActive = true
        secondView.widthAnchor.constraint(equalTo: firstView.widthAnchor, multiplier: 0.5)
        thirdView.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 8).isActive = true
        thirdView.heightAnchor.constraint(equalTo: secondView.heightAnchor).isActive = true
        thirdView.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        thirdView.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        thirdView.bottomAnchor.constraint(equalTo: margin.bottomAnchor, constant: -8).isActive = true
    }
    
    private func setupGestureRecognizer() {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Example7ViewController.tap(sender:)))
        view.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc private func tap(sender: UITapGestureRecognizer) {
        print(#function)
    }
}
