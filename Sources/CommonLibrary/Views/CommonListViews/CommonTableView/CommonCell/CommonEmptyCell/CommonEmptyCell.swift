//
//  CommonEmptyCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import UIKit

open class CommonEmptyCell: CommonTableCell {

    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonEmptyCell"
    }
    
    private var selfViewModel: CommonEmptyCellViewModel? {
        return self.viewModel as? CommonEmptyCellViewModel
    }
    
}
