//
//  CharacterCell.swift
//  Interview
//
//  Created by Fandom on 04/11/2020.
//

import UIKit

final class CharacterCell: UICollectionViewCell {
    
    private lazy var avatarView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 4.0
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 1.0
        imageView.layer.borderColor = Colors().borderColor?.cgColor
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        backgroundColor = .orange
        setUpSubviews()
        setUpConstraints()
    }
    
    private func setUpSubviews() {
        contentView.addSubview(avatarView)
    }
    
    private func setUpConstraints() {
        avatarView.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(68.0)
            make.center.equalToSuperview()
        }
    }
    
    func populate(with model: CharacterScreen.CharacterModel) {
        
    }
}
