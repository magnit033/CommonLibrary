//
//  CommonTextFieldCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 10.11.2021.
//

import UIKit

open class CommonTextFieldCellViewModel: CommonTableCellViewModel, CommonTextFieldCellViewModelProtocol {
    
    // MARK: - Properties
    
    private var selfDelegate: CommonTextFieldCellViewModelDelegate? {
        return self.delegate as? CommonTextFieldCellViewModelDelegate
    }
    
    // MARK: - Lifecycle
    
    public init(text: String,
                placeHolder: String,
                config: CommonConfig,
                object: CommonTableCellObjects? = nil) {
        self.text = text
        self.placeHolder = placeHolder
        super.init(config: config, object: object)
        
        self.cellHeight = 80
    }
    
    // MARK: - CommonThemeCellViewModelProtocol
    
    public var text: String
    public var placeHolder: String
    public var returnType: UIReturnKeyType = .default
    public var languageCode: String = Locale.current.languageCode ?? "ru"
    public var keyboardType: UIKeyboardType = .default
    public var autocorrectionType: UITextAutocorrectionType = .yes
    public var keyboardAppearance: UIKeyboardAppearance = UIKeyboardAppearance.default
    public var placeHolderBackground: UIColor = UIColor.white
    public var tintColor: UIColor = UIColor.systemBlue
    
    open func open() {
        self.selfDelegate?.open()
    }
    
    open func close() {
        self.selfDelegate?.close()
    }
    
    open func setWarning() {
        self.selfDelegate?.setWarning()
    }
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonTextFieldCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonTextFieldCell.self
    }
}
