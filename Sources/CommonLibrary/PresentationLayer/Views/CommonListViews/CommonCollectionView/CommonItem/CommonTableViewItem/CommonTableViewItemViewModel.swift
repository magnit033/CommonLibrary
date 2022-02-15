//
//  CommonTableViewItemViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 15.12.2021.
//

import UIKit

open class CommonTableViewItemViewModel: CommonCollectionItemViewModel, CommonTableViewItemViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public override init(config: CommonConfig,
                         object: CommonTableCellObjects? = nil) {
        super.init(config: config, object: object)
        self.configureCellViewModels()
    }
    
    // MARK: - CommonTableViewItemViewModelProtocol
    
    public var cellViewModels: [CommonTableCellViewModel] = []
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonTableViewItem.identifier
    }
    
    // MARK: - To override
    
    open func configureCellViewModels() {
    }
}
