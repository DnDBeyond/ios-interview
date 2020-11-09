//
//  UIImageView+Ext.swift
//  Interview
//
//  Created by Fandom on 04/11/2020.
//

import UIKit
import Kingfisher

extension UIImageView {
    func setImage(with url: URL?, placeholder: UIImage? = nil, completion: ((UIImage?) -> Void)? = nil) {
        kf.setImage(with: url, placeholder: placeholder, completionHandler: { result in
            switch result {
            case .success(let image):
                completion?(image.image)
            case .failure:
                completion?(nil)
            }
        })
    }
}
