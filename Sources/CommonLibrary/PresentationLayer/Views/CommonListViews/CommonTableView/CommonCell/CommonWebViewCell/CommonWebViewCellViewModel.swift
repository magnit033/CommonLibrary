//
//  CommonWebViewCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import UIKit

open class CommonWebViewCellViewModel: CommonTableCellViewModel, CommonWebViewCellViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public init(urlString: String,
                height: CGFloat = 44,
                config: CommonConfig,
                object: CommonTableCellObjects? = nil) {
        
        self.url = URL(string: urlString)
        super.init(config: config, object: object)
        
        self.cellHeight = height
    }
    
    
    // MARK: - CommonWebViewCellViewModelProtocol
    
    public var url: URL?
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonWebViewCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonWebViewCell.self
    }
}
