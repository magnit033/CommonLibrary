//
//  CommonRightTitleCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 03.12.2021.
//

import UIKit

open class CommonRightTitleCell: CommonButtonCell {

    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonRightTitleCell"
    }
    
    private let titleLabel = UILabel()
    private let rightTitleLabel = UILabel()
    
    // MARK: - Override
    
    open override func updateView() {
        super.updateView()
        
        guard let viewModel = viewModel as? CommonRightTitleCellViewModel else {
            return
        }
        self.titleLabel.text = viewModel.title
        self.rightTitleLabel.text = viewModel.rightTitle
        
        self.rightTitleLabel.font = viewModel.config.font
        self.titleLabel.font = viewModel.config.font
    }
    
    // MARK: - Override
    
    open override func setup() {
        
        super.setup()
        
        self.rightTitleLabel.numberOfLines = 0
        self.rightTitleLabel.textAlignment = .right
        
        self.titleLabel.numberOfLines = 0
        self.titleLabel.textAlignment = .left
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.rightTitleLabel)
        self.rightTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.rightTitleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.rightTitleLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.rightTitleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.rightTitleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        
        self.contentView.addSubview(self.titleLabel)
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.titleLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: self.rightTitleLabel.leadingAnchor, constant: 8).isActive = true
    }
}
