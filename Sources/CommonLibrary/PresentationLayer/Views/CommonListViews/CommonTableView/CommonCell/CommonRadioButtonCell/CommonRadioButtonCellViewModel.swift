//
//  CommonRadioButtonCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

open class CommonRadioButtonCellViewModel: CommonButtonCellViewModel, CommonRadioButtonCellViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public init(title: String,
         rightTitle: String,
         isSelected: Bool = false,
         object: CommonTableCellObjects? = nil) {
        
        self.title = title
        self.rightTitle = rightTitle
        self.isSelected = isSelected
        super.init(object: object)
        
        self.cellHeight = 40
    }
    
    // MARK: - CommonRadioButtonCellViewModelProtocol
    
    public var title: String
    public var rightTitle: String
    public var isSelected: Bool
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonRadioButtonCell.identifier
    }
}
