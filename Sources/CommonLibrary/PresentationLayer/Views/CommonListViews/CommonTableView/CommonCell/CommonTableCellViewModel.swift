//
//  CommonTableCellViewModel.swift
//  ios.tec.prizrak.2.0
//
//  Created by Shupegin Sergey on 05.10.2021.
//  Copyright © 2021 tec-electronics. All rights reserved.
//

import UIKit

open class CommonTableCellViewModel: CommonTableCellViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(object: CommonTableCellObjects? = nil) {
        self.object = object
    }
    
    // MARK: - To override
    
    public weak var delegate: CommonTableCellViewModelDelegate?
    
    open var config: CommonConfig {
        return CommonConfig()
    }
    
    public var object: CommonTableCellObjects?
    
    open var identifier: String {
        return ""
    }
    
    open var type: CommonTableCell.Type {
        return CommonTableCell.self
    }
    
    public var cellHeight: CGFloat = 60
    
    open func update() {
        self.delegate?.update()
    }
    
    open func selectCell(object: Any?) {
        self.delegate?.select(object: self.object)
    }
}
