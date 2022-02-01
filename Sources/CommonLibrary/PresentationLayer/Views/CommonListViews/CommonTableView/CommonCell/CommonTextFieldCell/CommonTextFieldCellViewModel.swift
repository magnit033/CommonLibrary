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
    
    public init(text: String, placeHolder: String, returnType: UIReturnKeyType = .default, languageCode: String, object: CommonTableCellObjects? = nil) {
        self.text = text
        self.placeHolder = placeHolder
        self.returnType = returnType
        self.languageCode = languageCode
        
        super.init(object: object)
        self.cellHeight = 80
    }
    
    // MARK: - CommonThemeCellViewModelProtocol
    
    public var text: String
    public var placeHolder: String
    public var returnType: UIReturnKeyType
    public var languageCode: String
    
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
}
