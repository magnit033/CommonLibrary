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
    
    public var object: CommonTableCellObjects?
    public var separatorColor: UIColor? = UIColor.clear
    
    public var identifier: String {
        return ""
    }
    
    public var cellHeight: CGFloat = 60
    
    public func update() {
        self.delegate?.update()
    }
    
    public func selectCell(object: Any?) {
        self.delegate?.select(object: self.object)
    }
}
