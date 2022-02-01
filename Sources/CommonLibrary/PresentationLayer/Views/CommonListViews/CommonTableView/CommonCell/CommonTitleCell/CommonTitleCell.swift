//
//  CommonTitleCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import UIKit

open class CommonTitleCell: CommonButtonCell {

    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonTitleCell"
    }
    
    private let titleLabel = UILabel()
    
    // MARK: - Override
    
    open override func updateView() {
        super.updateView()
        
        guard let viewModel = viewModel as? CommonTitleCellViewModel else {
            return
        }
        self.titleLabel.text = viewModel.title
        self.titleLabel.font = UIFont.boldSystemFont(ofSize: viewModel.titleSize)
        self.titleLabel.textColor = viewModel.titleColor
        self.titleLabel.textAlignment = viewModel.titleAlignment
    }
    
    open override func setup() {
        super.setup()
        
        self.titleLabel.numberOfLines = 0
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.titleLabel)
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.titleLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
    }
}
