//
//  Example9ViewController.swift
//  autolayout-workshop
//
//  Created by Michał Kasprzyk on 7/20/16.
//  Copyright © 2016 Michał Kasprzyk. All rights reserved.
//

import UIKit

struct RowData {
    let title: String
    let description: String
}

class Example9ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let data: [RowData] = [
        RowData(title: "Title 1", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        RowData(title: "Title 2", description: "Lorem ipsum dolor sit amet."),
        RowData(title: "Title 3", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        RowData(title: "Title 4", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
        RowData(title: "Title 5", description: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 80.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
}

extension Example9ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Example9Cell", for: indexPath) as? Example9TableViewCell else { return UITableViewCell() }
        cell.title?.text = data[indexPath.row].title
        cell.desc?.text = data[indexPath.row].description
        return cell
    }
}
