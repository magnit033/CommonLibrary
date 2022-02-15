//
//  CommonButtonCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 09.11.2021.
//

import UIKit

open class CommonButtonCellViewModel: CommonTableCellViewModel, CommonButtonCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(title: String = " ",
                height: CGFloat = 60,
                config: CommonConfig,
                object: CommonTableCellObjects? = nil) {
        
        self.buttonTitle = title
        super.init(config: config, object: object)
        
        self.cellHeight = height
    }
    
    // MARK: - CommonThemeCellViewModelProtocol
    
    public var buttonTitle: String
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonButtonCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonButtonCell.self
    }
}
