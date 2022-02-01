//
//  CommonEmptyCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import UIKit

open class CommonEmptyCellViewModel: CommonTableCellViewModel {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(height: CGFloat) {
        super.init()
        self.cellHeight = height
    }
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonEmptyCell.identifier
    }
}
