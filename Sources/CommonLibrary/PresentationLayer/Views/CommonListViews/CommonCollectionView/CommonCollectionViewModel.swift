//
//  CommonCollectionViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 14.12.2021.
//

import Foundation

open class CommonCollectionViewModel: CommonCollectionViewModelProtocol {
    
    // MARK: - Private
    
    private let itemViewModels: [CommonCollectionItemViewModel]
    
    // MARK: - Lifecycle
    
    public init(itemViewModels: [CommonCollectionItemViewModel]) {
        self.itemViewModels = itemViewModels
    }

    // MARK: - CommonCollectionViewModelProtocol
    
    open func numberOfItems() -> Int {
        return self.itemViewModels.count
    }
    
    open func itemViewModel(indexPath: IndexPath) -> CommonCollectionItemViewModel? {
        guard self.itemViewModels.count > indexPath.item else {
            return nil
        }
        return self.itemViewModels[indexPath.item]
    }
}
