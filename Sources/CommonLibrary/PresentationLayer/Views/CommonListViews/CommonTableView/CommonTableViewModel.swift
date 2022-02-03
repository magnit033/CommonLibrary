//
//  CommonTableViewModel.swift
//  ios.tec.prizrak.2.0
//
//  Created by Shupegin Sergey on 30.09.2021.
//  Copyright © 2021 tec-electronics. All rights reserved.
//

import UIKit

open class CommonTableViewModel: CommonTableViewModelProtocol {
    
    // MARK: - Properties
    
    private let cellViewModels: [CommonTableCellViewModel]
    
    // MARK: - Lifecycle
    
    public init(cellViewModels: [CommonTableCellViewModel], alwaysBounceVertical: Bool = true) {
        self.cellViewModels = cellViewModels
        self.alwaysBounceVertical = alwaysBounceVertical
    }
    
    // MARK: - CommonTableViewModel
    
    public var alwaysBounceVertical: Bool
    
    open func numberOfRows() -> Int {
        return cellViewModels.count
    }
    
    open func cellViewModel(indexPath: IndexPath) -> CommonTableCellViewModel? {
        guard cellViewModels.count > indexPath.row else {
            return nil
        }
        return cellViewModels[indexPath.row]
    }
    
    public func cells() -> [String: CommonTableCell.Type] {
        var result: [String: CommonTableCell.Type] = [:]
        
        result.merge(self.commonCells(), uniquingKeysWith: { current, _ in current })
        result.merge(self.customCells(), uniquingKeysWith: { current, _ in current })
        
        return result
    }
    
    private func commonCells() -> [String: CommonTableCell.Type] {
        var result: [String: CommonTableCell.Type] = [:]
    
        result[CommonEmptyCell.identifier] = CommonEmptyCell.self
        result[CommonButtonCell.identifier] = CommonButtonCell.self
        result[CommonTitleCell.identifier] = CommonTitleCell.self
        result[CommonRightTitleCell.identifier] = CommonRightTitleCell.self
        result[CommonTextFieldCell.identifier] = CommonTextFieldCell.self
        result[CommonSubtitleCell.identifier] = CommonSubtitleCell.self
        result[CommonRadioButtonCell.identifier] = CommonRadioButtonCell.self
        result[CommonTableViewCell.identifier] = CommonTableViewCell.self
        result[CommonShadowTableViewCell.identifier] = CommonShadowTableViewCell.self
        result[CommonCollectionCell.identifier] = CommonCollectionCell.self
        result[CommonAttributedTitleCell.identifier] = CommonAttributedTitleCell.self
        result[CommonWebViewCell.identifier] = CommonWebViewCell.self
        result[CommonSegmentedCell.identifier] = CommonSegmentedCell.self
        
        return result
    }
    
    open func customCells() -> [String: CommonTableCell.Type] {
        let result: [String: CommonTableCell.Type] = [:]
        return result
    }
}
