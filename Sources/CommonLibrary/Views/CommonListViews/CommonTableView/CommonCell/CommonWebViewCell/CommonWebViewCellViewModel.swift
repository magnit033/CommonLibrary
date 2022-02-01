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
         object: CommonTableCellObjects? = nil) {
        
        self.url = URL(string: urlString)
        super.init(object: object)
        
        self.separatorColor = separatorColor
        self.cellHeight = height
    }
    
    
    // MARK: - CommonWebViewCellViewModelProtocol
    
    public var url: URL?
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonWebViewCell.identifier
    }
}
