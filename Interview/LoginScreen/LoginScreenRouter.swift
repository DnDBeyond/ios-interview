//
//  LoginScreenRouter.swift
//  Interview
//
//  Created by Artur Michna on 18/10/2021.
//  Copyright (c) 2021 Fandom. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol LoginScreenRoutingLogic {
    func routeToCharacterScreen()
}

final class LoginScreenRouter: NSObject {
    weak var viewController: LoginScreenViewController?
}

extension LoginScreenRouter: LoginScreenRoutingLogic {
    func routeToCharacterScreen() {
        let characterScreen = CharacterScreenAssembly().createViewController()
        let navigationController = UINavigationController(rootViewController: characterScreen)
        viewController?.present(navigationController, animated: true, completion: nil)
    }
}