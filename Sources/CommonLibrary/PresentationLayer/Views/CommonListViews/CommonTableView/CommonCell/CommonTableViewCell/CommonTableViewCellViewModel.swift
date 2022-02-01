//
//  CommonThemeCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 26.10.2021.
//

import UIKit

open class CommonTableViewCellViewModel: CommonTableCellViewModel, CommonTableViewCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public override init(object: CommonTableCellObjects? = nil) {
        super.init(object: object)
        self.configureCellViewModels()
        self.cellHeight = self.height()
    }
    
    // MARK: - CommonThemeCellViewModelProtocol
    
    public var cellViewModels: [CommonTableCellViewModel] = []
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonTableViewCell.identifier
    }
    
    open override func selectCell(object: Any?) {
        self.delegate?.select(object: object)
    }
    
    // MARK: - To override
    
    open func configureCellViewModels() {
        
    }
    
    open func height() -> CGFloat {
        var result: CGFloat = 0
        self.cellViewModels.forEach({ result += $0.cellHeight })
        return result
    }
}
