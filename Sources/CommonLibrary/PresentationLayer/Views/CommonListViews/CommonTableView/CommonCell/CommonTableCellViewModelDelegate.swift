//
//  CommonTableCellViewModelDelegate.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 09.12.2021.
//

import Foundation

public protocol CommonTableCellViewModelDelegate: AnyObject {
    
    func update()
    func select(object: Any?)
    
}
