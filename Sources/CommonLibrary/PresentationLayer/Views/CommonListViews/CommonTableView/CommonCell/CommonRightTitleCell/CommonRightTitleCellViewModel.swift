//
//  CommonRightTitleCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 03.12.2021.
//

import UIKit

open class CommonRightTitleCellViewModel: CommonButtonCellViewModel, CommonRightTitleCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(title: String, rightTitle: String, height: CGFloat = 40, object: CommonTableCellObjects? = nil) {
        self.title = title
        self.rightTitle = rightTitle
        super.init(object: object)
        if #available(iOS 13.0, *) {
            self.separatorColor = UIColor.systemGray5
        }
        self.cellHeight = height
    }
    
    // MARK: - CommonTitleCellViewModelProtocol
    
    public var title: String
    public var rightTitle: String
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonRightTitleCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonRightTitleCell.self
    }
}
