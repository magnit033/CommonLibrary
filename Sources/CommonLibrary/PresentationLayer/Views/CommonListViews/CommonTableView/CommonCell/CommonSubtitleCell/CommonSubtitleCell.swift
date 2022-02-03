//
//  CommonSubtitleCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

open class CommonSubtitleCell: CommonButtonCell {
    
    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonSubtitleCell"
    }
    
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    
    // MARK: - Override
    
    open override func setup() {
        
        super.setup()
        
        self.titleLabel.font = UIFont.systemFont(ofSize: 15)
        self.titleLabel.textColor = UIColor.black
        self.titleLabel.textAlignment = .left
        self.titleLabel.setContentHuggingPriority(UILayoutPriority(260), for: .vertical)
        
        self.subtitleLabel.font = UIFont.systemFont(ofSize: 14)
        self.subtitleLabel.textAlignment = .left
        self.subtitleLabel.numberOfLines = 0
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.titleLabel)
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 12).isActive = true
        self.titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        
        self.contentView.addSubview(self.subtitleLabel)
        self.subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.subtitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 2).isActive = true
        self.subtitleLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10).isActive = true
        self.subtitleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 32).isActive = true
        self.subtitleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
    }
    
    open override func updateView() {
        super.updateView()
        
        guard let viewModel = viewModel as? CommonSubtitleCellViewModel else {
            return
        }
        
        self.titleLabel.text = viewModel.title
        self.titleLabel.textColor = viewModel.titleColor
        self.titleLabel.numberOfLines = viewModel.titleLines
        self.subtitleLabel.text = viewModel.subtitle
        self.subtitleLabel.textColor = viewModel.subtitleColor
    }
}
