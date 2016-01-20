//
//  RootViewController.swift
//  Words
//
//  Created by Sam Soffes on 6/13/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

	// MARK: - Properties

	var searchController: UISearchController = {
		let resultsViewController = ResultsViewController()
		let viewController = UISearchController(searchResultsController: resultsViewController)
		viewController.hidesNavigationBarDuringPresentation = false
		viewController.searchResultsUpdater = resultsViewController
		return viewController
	}()


	// MARK: - Initializers

	convenience init() {
		self.init(nibName: nil, bundle: nil)
	}


	// MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

		definesPresentationContext = true
		navigationItem.titleView = searchController.searchBar
    }
}
