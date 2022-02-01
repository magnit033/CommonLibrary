//
//  CommonTextFieldCellViewModelDelegate.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 16.11.2021.
//

import Foundation

public protocol CommonTextFieldCellViewModelDelegate: CommonTableCellViewModelDelegate {
    
    func open()
    func close()
    func setWarning()
}
