//
//  CommonRadioButtonCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

open class CommonRadioButtonCell: CommonButtonCell {

    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonRadioButtonCell"
    }
    
    private let cellImageView = UIImageView()
    private let titleLabel = UILabel()
    private let rightTitleLabel = UILabel()
    
    // MARK: - Lifecycle

    // MARK: - IBOutlets
    
    open override func cellButtonAction(_ sender: Any) {
        guard let viewModel = self.viewModel as? CommonRadioButtonCellViewModel else {
            return
        }
        viewModel.isSelected = !viewModel.isSelected
        self.updateImageView()
    }
    
    // MARK: - Override
    
    open override func updateView() {
        super.updateView()
        
        guard let viewModel = viewModel as? CommonRadioButtonCellViewModel else {
            return
        }
        self.titleLabel.text = viewModel.title
        self.rightTitleLabel.text = viewModel.rightTitle
        
        self.titleLabel.font = viewModel.config.font
        self.titleLabel.font = viewModel.config.font
        self.updateImageView()
    }
    
    open override func setup() {
        super.setup()
        self.cellImageView.contentMode = .center
        self.rightTitleLabel.textAlignment = .right
    }
    
    open override func setupLayout() {
        
        super.setupLayout()
        
        self.contentView.addSubview(self.cellImageView)
        self.cellImageView.translatesAutoresizingMaskIntoConstraints = false
        self.cellImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        self.cellImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        self.cellImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        self.cellImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
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
        self.titleLabel.leadingAnchor.constraint(equalTo: self.cellImageView.trailingAnchor, constant: 4).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: self.rightTitleLabel.leadingAnchor, constant: -4).isActive = true
        
    }
    
    // MARK: - Private
    
    private func updateImageView() {
        guard let viewModel = viewModel as? CommonRadioButtonCellViewModel else {
            return
        }
        
        guard #available(iOS 13.0, *) else {
            return
        }
        let kCircle = UIImage(systemName: "circle", withConfiguration: UIImage.SymbolConfiguration(weight: .regular))?.withRenderingMode(.alwaysOriginal)
        let kCircleFill = UIImage(systemName: "circle.fill", withConfiguration: UIImage.SymbolConfiguration(weight: .regular))?.withRenderingMode(.alwaysOriginal)
        self.cellImageView.image = viewModel.isSelected ? kCircleFill?.withTintColor(UIColor.systemBlue) : kCircle?.withTintColor(UIColor.systemBlue)
    }
}
