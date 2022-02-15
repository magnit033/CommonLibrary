//
//  CommonTitleCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import UIKit

open class CommonTitleCellViewModel: CommonButtonCellViewModel, CommonTitleCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public override init(title: String,
                         height: CGFloat = 44,
                         config: CommonConfig,
                         object: CommonTableCellObjects? = nil) {
        self.title = title
        super.init(config: config, object: object)
        
        self.cellHeight = height
    }
    
    // MARK: - CommonTitleCellViewModelProtocol
    
    public var title: String
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonTitleCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonTitleCell.self
    }
}
