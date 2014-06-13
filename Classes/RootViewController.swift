//
//  RootViewController.swift
//  Words
//
//  Created by Sam Soffes on 6/13/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

	var searchController: UISearchController = {
		let resultsViewController = ResultsViewController()
		let viewController = UISearchController(searchResultsController: resultsViewController)
		viewController.hidesNavigationBarDuringPresentation = false
		viewController.searchResultsUpdater = resultsViewController
		return viewController
	}()
	
	convenience init() {
		self.init(nibName: nil, bundle: nil)
	}
	
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
		
		definesPresentationContext = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
		
		navigationItem.titleView = searchController.searchBar
    }
}
