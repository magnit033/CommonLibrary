//
//  CommonTextFieldCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 10.11.2021.
//

import UIKit

open class CommonTextFieldCell: CommonTableCell, CommonTextViewDelegate, CommonTextFieldCellViewModelDelegate {
    
    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonTextFieldCell"
    }
    
    private let textField = CommonTextView()
    
    private var selfViewModel: CommonTextFieldCellViewModel? {
        self.viewModel as? CommonTextFieldCellViewModel
    }
    
    // MARK: - Lifecycle
    
    // MARK: - CommonTextFieldDelegate
    
    public func textFieldShouldReturn(commonTextField: CommonTextView) {
        self.viewModel?.selectCell(object: nil)
    }
    
    public func textFieldDidChanged(commonTextField: CommonTextView) {
        self.selfViewModel?.text = self.textField.text
    }
    
    public func textFiledShouldBecameFirstResponder(commonTextField: CommonTextView) {
    }
    
    // MARK: - CommonTextFieldCellViewModelDelegate
    
    public func open() {
        self.textField.open()
    }
    
    public func close() {
        self.textField.close()
    }
    
    public func setWarning() {
        self.textField.setWarning()
    }

    // MARK: - IBOutlets
    
    // MARK: - Override
    
    open override func updateView() {
        super.updateView()
        
        guard let viewModel = viewModel as? CommonTextFieldCellViewModel else {
            return
        }
        
        
        let config = CommonTextViewConfig(placeHolder: viewModel.placeHolder,
                                          keyboardType: viewModel.keyboardType,
                                          returnKeyType: viewModel.returnType,
                                          autocorrectionType: viewModel.autocorrectionType,
                                          languageCode: viewModel.languageCode,
                                          font: viewModel.config.font,
                                          textColor: viewModel.config.titleColor,
                                          placeHolderColor: viewModel.config.subtitleColor,
                                          keyboardAppearance: viewModel.keyboardAppearance,
                                          placeholderBackground: viewModel.placeHolderBackground,
                                          tintColor: viewModel.tintColor)
        self.textField.viewModel = CommonTextViewModel(config: config, text: viewModel.text)
        self.textField.delegate = self
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.textField)
        self.textField.translatesAutoresizingMaskIntoConstraints = false
        self.textField.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.textField.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.textField.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        self.textField.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
    }
    
    // MARK: - Private
    
}
