//
//  Character.swift
//  Interview
//
//  Created by Artur Michna on 19/10/2021.
//

import Foundation

struct Character: Codable {
    let id: Int
    let name: String
    let avatar: URL
    let inventoryItems: [Inventory]
    
    enum CodingKeys: String, CodingKey {
        case character
        case inventory
        case id
        case name
        case avatar = "avatarUrl"
        case inventoryItems
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let character = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .character)
        
        id = try character.decode(Int.self, forKey: .id)
        name = try character.decode(String.self, forKey: .name)
        avatar = try character.decode(URL.self, forKey: .avatar)
        
        inventoryItems = try character.decode([Inventory].self, forKey: .inventory)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        var character = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .character)
        try character.encode(id, forKey: .id)
        try character.encode(name, forKey: .name)
        try character.encode(avatar, forKey: .avatar)
        
        var inventoryContainer = character.nestedContainer(keyedBy: CodingKeys.self, forKey: .inventory)
        try inventoryContainer.encode(inventoryItems, forKey: .inventoryItems)
    }
}
