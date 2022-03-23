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
    
    public let services = Services.shared
    
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
        
        self.cellViewModels.forEach({ cellViewModel in
            result[cellViewModel.identifier] = cellViewModel.type
        })
        
        return result
    }
}
