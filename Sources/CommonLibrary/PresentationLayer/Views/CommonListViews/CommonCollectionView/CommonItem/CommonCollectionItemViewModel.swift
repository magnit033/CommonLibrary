//
//  CommonCollectionItemViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 15.12.2021.
//

import UIKit

open class CommonCollectionItemViewModel: CommonCollectionItemViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public init(config: CommonConfig,
                object: CommonTableCellObjects? = nil) {
        self.object = object
        self.config = config
    }
    
    // MARK: - CommonCollectionItemViewModelProtocol
    
    public var object: CommonTableCellObjects?
    open var config: CommonConfig
    
    open var identifier: String {
        return ""
    }
    
    public var itemWidth: CGFloat = 60
    public var itemHeight: CGFloat = 60
}
