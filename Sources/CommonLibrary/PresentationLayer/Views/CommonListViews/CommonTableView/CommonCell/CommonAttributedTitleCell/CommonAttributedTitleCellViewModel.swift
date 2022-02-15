//
//  CommonAttributedTitleCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import UIKit

open class CommonAttributedTitleCellViewModel: CommonButtonCellViewModel, CommonAttributedTitleCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(title: NSAttributedString,
         height: CGFloat = 44,
         object: CommonTableCellObjects? = nil) {
        
        self.title = title
        super.init(object: object)
        
        self.cellHeight = height
    }
    
    // MARK: - CommonTitleCellViewModelProtocol
    
    public var title: NSAttributedString
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonAttributedTitleCell.identifier
    }

    open override var type: CommonTableCell.Type {
        return CommonAttributedTitleCell.self
    }
}
