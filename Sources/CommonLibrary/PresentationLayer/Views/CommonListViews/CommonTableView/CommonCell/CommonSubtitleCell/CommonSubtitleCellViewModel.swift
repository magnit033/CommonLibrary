//
//  CommonSubtitleCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

open class CommonSubtitleCellViewModel: CommonButtonCellViewModel, CommonSubtitleCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(title: String,
         titleLines: Int = 0,
         subtitle: String,
         subtitleColor: UIColor = UIColor.systemGray,
         separatorColor: UIColor = UIColor.clear,
         height: CGFloat = 60,
         object: CommonTableCellObjects? = nil) {
        
        self.title = title
        self.titleLines = titleLines
        self.subtitle = subtitle
        self.subtitleColor = subtitleColor
        super.init(object: object)
        
        self.cellHeight = height
        self.separatorColor = separatorColor
    }
    
    // MARK: - CommonTitleCellViewModelProtocol
    
    public var title: String
    public var titleColor: UIColor = UIColor.black
    public var titleLines: Int
    public var subtitle: String
    public var subtitleColor: UIColor
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonSubtitleCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonSubtitleCell.self
    }
    
}
