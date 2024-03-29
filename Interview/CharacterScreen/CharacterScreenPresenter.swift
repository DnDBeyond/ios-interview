//
//  CharacterScreenPresenter.swift
//  Interview
//
//  Created by Fandom on 28/10/2020.
//  Copyright (c) 2020 Fandom. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol CharacterScreenBusinessLogic {
    func fetchCharacter()
}

final class CharacterScreenPresenter {
    weak var viewController: CharacterScreenDisplayLogic?
    private let worker: CharacterScreenWorker
    
    init(worker: CharacterScreenWorker) {
        self.worker = worker
    }
}

extension CharacterScreenPresenter: CharacterScreenBusinessLogic {
    func fetchCharacter() {
        worker.fetchData() { result in
            
        }
    }
}
