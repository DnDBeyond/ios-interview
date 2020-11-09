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
//        The application should have a mocked login screen
//        After clicking the sign in button user should navigate to the character screen.
        let viewController = CharacterScreenAssembly().createViewController()
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}

