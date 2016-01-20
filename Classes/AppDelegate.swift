//
//  AppDelegate.swift
//  Words
//
//  Created by Sam Soffes on 6/13/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import UIKit

@UIApplicationMain final class AppDelegate: UIResponder, UIApplicationDelegate {

	// MARK: - Properties

	var window: UIWindow? = {
		let window = UIWindow(frame: UIScreen.mainScreen().bounds)
		window.backgroundColor = UIColor.whiteColor()
		window.rootViewController = UINavigationController(rootViewController: RootViewController())
		return window
	}()


	// MARK: - UIApplicationDelegate
	
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
		window?.makeKeyAndVisible()
		return true
	}
}
