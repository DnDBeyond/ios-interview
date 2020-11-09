//
//  CharacterScreenAssembly.swift
//  Interview
//
//  Created by Fandom on 30/10/2020.
//

import UIKit

class CharacterScreenAssembly {
    
    func createViewController() -> UIViewController {
        let viewController = CharacterScreenViewController()
        let httpClient = HTTPClient()
        let worker = CharacterScreenWorker(httpClient: httpClient)
        let presenter = CharacterScreenPresenter(worker: worker)
        let router = CharacterScreenRouter()
        viewController.presenter = presenter
        viewController.router = router
        presenter.viewController = viewController
        router.viewController = viewController
        
        return viewController
    }
}
