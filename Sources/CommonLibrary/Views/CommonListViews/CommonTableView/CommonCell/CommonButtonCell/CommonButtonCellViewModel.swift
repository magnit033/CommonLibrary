//
//  CommonButtonCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 09.11.2021.
//

import UIKit

open class CommonButtonCellViewModel: CommonTableCellViewModel, CommonButtonCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(title: String = " ", titleColor: UIColor = UIColor.systemBlue, height: CGFloat = 60, object: CommonTableCellObjects? = nil) {
        self.buttonTitle = title
        self.buttonTitleColor = titleColor
        super.init(object: object)
        
        self.cellHeight = height
    }
    
    // MARK: - CommonThemeCellViewModelProtocol
    
    public var buttonTitle: String
    public var buttonTitleColor: UIColor
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonButtonCell.identifier
    }
}