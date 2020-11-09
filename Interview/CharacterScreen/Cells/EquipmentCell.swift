//
//  EquipmentCell.swift
//  Interview
//
//  Created by Fandom on 04/11/2020.
//

import UIKit

class EquipmentCell: UICollectionViewCell {
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fill
        view.spacing = 5
        return view
    }()
    
    private lazy var itemNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        
        return label
    }()
    
    private lazy var itemTypeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        
        return label
    }()
    
    private lazy var magicItemLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.text = "MAGIC ITEM"
        return label
    }()
    
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
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(itemNameLabel)
        stackView.addArrangedSubview(itemTypeLabel)
    }
    
    private func setUpConstraints() {
        // Set constraints
    }
    
    func populate(/* pass model */) {
        
    }
}
