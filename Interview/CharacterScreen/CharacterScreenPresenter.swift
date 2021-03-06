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

final class CharacterScreenPresenter: CharacterScreenBusinessLogic {
    weak var viewController: CharacterScreenDisplayLogic?
    private let worker: CharacterScreenWorker
    
    init(worker: CharacterScreenWorker) {
        self.worker = worker
    }
  
    // MARK: Fetch list
    
//    Character screen should contain the following information:
//        character name
//        avatar
//        list of inventory items
//        each item should have a name colored based on rarity of the item
//            Common - #F5F8FA
//            Uncommon - #5CBE3E
//            Rare - #5991DC
//            Very Rare - #B55DFF
//            Legendary - #F2A546
//            Artifact - #B78B76
//        item type
//        information whether the item is magical or not below the name
    
    func fetchCharacter() {
        worker.fetchData() { result in
            
        }
    }
}
