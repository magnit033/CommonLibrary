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
                height: CGFloat = 60,
                config: CommonConfig,
                object: CommonTableCellObjects? = nil) {
        
        self.title = title
        self.titleLines = titleLines
        self.subtitle = subtitle
        super.init(config: config, object: object)
        
        self.cellHeight = height
    }
    
    // MARK: - CommonTitleCellViewModelProtocol
    
    public var title: String
    public var titleLines: Int
    public var subtitle: String
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonSubtitleCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonSubtitleCell.self
    }
    
}
