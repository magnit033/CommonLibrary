//
//  CommonCollectionViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 14.12.2021.
//

import Foundation

open class CommonCollectionViewModel: CommonCollectionViewModelProtocol {
    
    // MARK: - Private
    
    public let services = Services.shared
    
    // MARK: - Lifecycle
    
    public init(itemViewModels: [CommonCollectionItemViewModel]) {
        self.itemViewModels = itemViewModels
    }

    // MARK: - CommonCollectionViewModelProtocol
    
    open var itemViewModels: [CommonCollectionItemViewModel]
    
    open func numberOfItems() -> Int {
        return self.itemViewModels.count
    }
    
    open func itemViewModel(indexPath: IndexPath) -> CommonCollectionItemViewModel? {
        guard self.itemViewModels.count > indexPath.item else {
            return nil
        }
        return self.itemViewModels[indexPath.item]
    }
    
    public func items() -> [String: CommonCollectionItem.Type] {
        var result: [String: CommonCollectionItem.Type] = [:]
        self.itemViewModels.forEach({ itemViewModel in
            result[itemViewModel.identifier] = itemViewModel.type
        })
        return result
    }
}
