//
//  CommonRightTitleCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 03.12.2021.
//

import UIKit

open class CommonRightTitleCellViewModel: CommonButtonCellViewModel, CommonRightTitleCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(title: String,
                rightTitle: String,
                height: CGFloat = 40,
                config: CommonConfig,
                object: CommonTableCellObjects? = nil) {
        self.title = title
        self.rightTitle = rightTitle
        super.init(config: config, object: object)
        
        self.cellHeight = height
    }
    
    // MARK: - CommonTitleCellViewModelProtocol
    
    public var title: String
    public var rightTitle: String
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonRightTitleCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonRightTitleCell.self
    }
}
