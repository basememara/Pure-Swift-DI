//
//  AppDelegate.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        configure(dependency: AppDependency())
        return true
    }
}

