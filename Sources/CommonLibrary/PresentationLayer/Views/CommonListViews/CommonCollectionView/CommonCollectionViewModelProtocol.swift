//
//  CommonCollectionViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 14.12.2021.
//

import Foundation

public protocol CommonCollectionViewModelProtocol {
    
    func numberOfItems() -> Int
    func itemViewModel(indexPath: IndexPath) -> CommonCollectionItemViewModel?
    
    func items() -> [String: CommonCollectionItem.Type]
}
