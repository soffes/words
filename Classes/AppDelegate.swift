//
//  AppDelegate.swift
//  Words
//
//  Created by Sam Soffes on 6/13/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
	@lazy var window: UIWindow = {
		let win = UIWindow(frame: UIScreen.mainScreen().bounds)
		win.backgroundColor = UIColor.whiteColor()
		win.rootViewController = UINavigationController(rootViewController: RootViewController())
		return win
	}()
	
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
		window.makeKeyAndVisible()
		return true
	}
}
