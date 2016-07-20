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
        Example(name: "Example 1", description: "Building layout using Interface Builder"),
        Example(name: "Example 2", description: "Building layout with UIStackView"),
        Example(name: "Example 3", description: "Using Size-classes"),
        Example(name: "Example 4", description: "Creating Constraints programmatically"),
        Example(name: "Example 5", description: "Changing Constraints"),
        Example(name: "Example 6", description: "Debugging Auto Layout - Unsatisfiable Layouts"),
        Example(name: "Example 7", description: "Debugging Auto Layout - Ambiguous Layouts"),
        Example(name: "Example 8", description: "UIScrollView + Auto Layout")
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
