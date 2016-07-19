//
//  Example2ViewController.swift
//  autolayout-workshop
//
//  Created by Michał Kasprzyk on 7/19/16.
//  Copyright © 2016 Michał Kasprzyk. All rights reserved.
//

import UIKit

class Example2ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
}

extension Example2ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Example2Cell", for: indexPath)
        return cell
    }
}
