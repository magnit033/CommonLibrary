//
//  CommonTableViewModelProtocol.swift
//  ios.tec.prizrak.2.0
//
//  Created by Shupegin Sergey on 30.09.2021.
//  Copyright © 2021 tec-electronics. All rights reserved.
//

import Foundation

public protocol CommonTableViewModelProtocol {
    
    var alwaysBounceVertical: Bool { get }
    
    func numberOfRows() -> Int
    func cellViewModel(indexPath: IndexPath) -> CommonTableCellViewModel?
    
    func cells() -> [String: CommonTableCell.Type]
}
