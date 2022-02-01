//
//  CommonButtonCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 09.11.2021.
//

import UIKit

open class CommonButtonCell: CommonTableCell {

    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonButtonCell"
    }
    
    private let cellButton = CommonButton()
    
    // MARK: - Lifecycle

    // MARK: - IBOutlets
    
    @objc func cellButtonAction(_ sender: Any) {
        self.viewModel?.selectCell(object: nil)
    }
    
    // MARK: - Override
    
    open override func updateView() {
        
        super.updateView()
        
        guard let viewModel = viewModel as? CommonButtonCellViewModel else {
            return
        }
        self.cellButton.viewModel = CommonButtonViewModel(title: viewModel.buttonTitle, titleColor: viewModel.buttonTitleColor)
    }
    
    open override func setup() {
        super.setup()
        
        self.cellButton.addTarget(self, action: #selector(cellButtonAction(_:)), for: .touchUpInside)
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.cellButton)
        self.cellButton.translatesAutoresizingMaskIntoConstraints = false
        self.cellButton.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.cellButton.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.cellButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        self.cellButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
    }
    
    // MARK: - Private
    
}
