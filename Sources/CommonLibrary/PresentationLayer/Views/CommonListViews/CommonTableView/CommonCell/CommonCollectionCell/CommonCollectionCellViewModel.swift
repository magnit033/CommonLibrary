//
//  CommonCollectionCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 14.12.2021.
//

import UIKit

open class CommonCollectionCellViewModel: CommonTableCellViewModel {
    
    // MARK: - Lifecycle
    
    public override init(object: CommonTableCellObjects? = nil) {
        super.init(object: object)
        self.configureItemViewModels()
        self.cellHeight = self.height()
    }
    
    // MARK: - CommonTableCellViewModel
    
    public var itemViewModels: [CommonCollectionItemViewModel] = []
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonCollectionCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonCollectionCell.self
    }
    
    // MARK: - To override
    
    open func configureItemViewModels() {
    }
    
    // MARK: - Private
    
    private func height() -> CGFloat {
        guard let itemViewModel = self.itemViewModels.first else {
            return 0
        }
        return itemViewModel.itemHeight
    }
}
