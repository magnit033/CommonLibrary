//
//  CommonTitleCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import UIKit

open class CommonTitleCellViewModel: CommonButtonCellViewModel, CommonTitleCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(title: String,
         titleSize: CGFloat = 17,
         titleColor: UIColor = UIColor.black,
         titleAlignment: NSTextAlignment = .left,
         separatorColor: UIColor = UIColor.clear,
         height: CGFloat = 44,
         object: CommonTableCellObjects? = nil) {
        
        self.title = title
        self.titleSize = titleSize
        self.titleColor = titleColor
        self.titleAlignment = titleAlignment
        super.init(object: object)
        
        self.separatorColor = separatorColor
        self.cellHeight = height
    }
    
    // MARK: - CommonTitleCellViewModelProtocol
    
    public var title: String
    public var titleSize: CGFloat
    public var titleColor: UIColor
    public var titleAlignment: NSTextAlignment
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonTitleCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonTitleCell.self
    }
}
