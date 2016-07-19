//
//  ExamplesViewController.swift
//  autolayout-workshop
//
//  Created by Michał Kasprzyk on 7/19/16.
//  Copyright © 2016 Michał Kasprzyk. All rights reserved.
//

import UIKit

struct Example {
    let name: String
    let description: String
}

class ExamplesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private var examples: [Example] = [
        Example(name: "Example 1", description: "Building layout using Interface Builder")
    ]
}

extension ExamplesViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return examples.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExampleCell", for: indexPath)
        cell.textLabel?.text = examples[indexPath.row].name
        cell.detailTextLabel?.text = examples[indexPath.row].description
        return cell
    }
}

extension ExamplesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let segueIdentifier: String = "showExample\(indexPath.row + 1)"
        performSegue(withIdentifier: segueIdentifier, sender: nil)
    }
}
