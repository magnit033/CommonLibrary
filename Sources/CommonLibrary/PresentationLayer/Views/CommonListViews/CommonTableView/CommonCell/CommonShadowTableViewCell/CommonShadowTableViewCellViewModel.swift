//
//  CommonShadowTableViewCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import UIKit

open class CommonShadowTableViewCellViewModel: CommonTableViewCellViewModel, CommonShadowTableViewCellViewModelProtocol {
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonShadowTableViewCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonShadowTableViewCell.self
    }
    
    open override func height() -> CGFloat {
        var result: CGFloat = 16
        self.cellViewModels.forEach({ result += $0.cellHeight })
        return result
    }
    
    // MARK: - CommonShadowTableViewCellViewModelProtocol
    
}
