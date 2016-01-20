//
//  ResultsViewController.swift
//  Words
//
//  Created by Sam Soffes on 6/13/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import UIKit

class ResultsViewController: UITableViewController {

	// MARK: - Properties

	var results: [String] = []


	// MARK: - Initializers
	
	convenience init() {
		self.init(style: .Plain)
	}


	// MARK: - UIViewController
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }


	// MARK: - UITableViewDataSource
	
    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = results[indexPath.row]
        return cell
    }
}


extension ResultsViewController: UISearchResultsUpdating {
	func updateSearchResultsForSearchController(searchController: UISearchController) {
		if let text = searchController.searchBar.text, result = Thesaurus.defaultThesaurus().resultForQuery(text) {
			results = result.synonyms
		} else {
			results = []
		}
		tableView.reloadData()
	}
}
