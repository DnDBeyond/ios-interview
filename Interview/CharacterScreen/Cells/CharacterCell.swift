//
//  CharacterCell.swift
//  Interview
//
//  Created by Fandom on 04/11/2020.
//

import UIKit

class CharacterCell: UICollectionViewCell {
    
    private lazy var avatarView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
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
        // Set constraints
    }
    
    func populate(/* pass model */) {
        
    }
}
