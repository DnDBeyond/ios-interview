//
//  UICollectionView+Ext.swift
//  Interview
//
//  Created by Fandom on 04/11/2020.
//

import UIKit

extension UICollectionView {
    public func dequeue<T: AnyObject>(_ cellClass: T.Type, for indexPath: IndexPath) -> T? {
        dequeueReusableCell(withReuseIdentifier: String(describing: cellClass), for: indexPath) as? T
    }
    
    public func register<T: UICollectionViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellWithReuseIdentifier: String(describing: cellClass))
    }
}
