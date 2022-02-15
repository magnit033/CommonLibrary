//
//  CommonCollectionItemViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 15.12.2021.
//

import UIKit

open class CommonCollectionItemViewModel: CommonCollectionItemViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public init(object: CommonTableCellObjects? = nil) {
        self.object = object
    }
    
    // MARK: - CommonCollectionItemViewModelProtocol
    
    public var object: CommonTableCellObjects?
    open var config: CommonConfig = CommonConfig()
    
    open var identifier: String {
        return ""
    }
    
    public var itemWidth: CGFloat = 60
    public var itemHeight: CGFloat = 60
}
