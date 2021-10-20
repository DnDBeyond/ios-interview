//
//  UIColor+Ext.swift
//  Interview
//
//  Created by Fandom on 30/10/2020.
//

import UIKit

extension UIColor {
    convenience init?(hexString: String) {
        let red: CGFloat
        let green: CGFloat
        let blue: CGFloat
        let alpha: CGFloat
        
        var hex = hexString
        if hexString.hasPrefix("#") {
            hex = String(hexString[hexString.index(hexString.startIndex, offsetBy: 1)...])
        }
        
        let scanner = Scanner(string: hex)
        var hexNumber: UInt64 = 0
        guard scanner.scanHexInt64(&hexNumber) else { return nil }
        
        if hex.count == 6 {
            red = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            green = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            blue = CGFloat(hexNumber & 0x0000ff) / 255
            self.init(red: red, green: green, blue: blue, alpha: 1)
            return
        } else if hex.count == 8 {
            red = CGFloat((hexNumber & 0xff000000) >> 24) / 255
            green = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
            blue = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
            alpha = CGFloat(hexNumber & 0x000000ff) / 255
            self.init(red: red, green: green, blue: blue, alpha: alpha)
            return
        }
        
        return nil
    }
}
