//
//  Rarity.swift
//  Interview
//
//  Created by Artur Michna on 19/10/2021.
//

import Foundation
import UIKit

enum Rarity: String {
    case common = "Common"
    case uncommon = "Uncommon"
    case rare = "Rare"
    case veryRare = "Very Rare"
    case legendary = "Legendary"
    case artifact = "Artifact"
    
    var hexColor: UIColor? {
        switch self {
        case .common: return UIColor(hexString: "#F5F8FA")
        case .uncommon: return UIColor(hexString: "#5CBE3E")
        case .rare: return UIColor(hexString: "#5991DC")
        case .veryRare: return UIColor(hexString: "#B55DFF")
        case .legendary: return UIColor(hexString: "#F2A546")
        case .artifact: return UIColor(hexString: "#B78B76")
        }
    }
}
