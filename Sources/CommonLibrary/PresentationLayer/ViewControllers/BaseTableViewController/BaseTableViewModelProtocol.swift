//
//  BaseTableViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 27.10.2021.
//

import Foundation

public protocol BaseTableViewModelProtocol {
    
    var ignoreKeyboard: Bool { get }
    
    var bottomButtonTitle: String { get }
    func bottomButtonAction()
    
    var cellViewModels: [CommonTableCellViewModel] { get }
    
    func didSelect(object: Any?)
}
