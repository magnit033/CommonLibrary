//
//  CommonCollectionItemViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 15.12.2021.
//

import UIKit

open class CommonCollectionItemViewModel: CommonCollectionItemViewModelProtocol {
    
    // MARK: - Properties
    
    public let services = Services.shared
    
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
    
    open var type: CommonCollectionItem.Type {
        return CommonCollectionItem.self
    }
    
    public var itemWidth: CGFloat = 60
    public var itemHeight: CGFloat = 60
}
