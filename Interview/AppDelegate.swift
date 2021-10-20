//
//  AppDelegate.swift
//  Interview
//
//  Created by Fandom on 28/10/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let loginViewController = LoginScreenAssembly().createViewController()
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = loginViewController
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}

