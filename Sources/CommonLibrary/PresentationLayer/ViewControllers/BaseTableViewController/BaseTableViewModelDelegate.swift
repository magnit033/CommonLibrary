//
//  BaseTableViewModelDelegate.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 27.10.2021.
//

import Foundation

public protocol BaseTableViewModelDelegate: BaseViewModelDelegate {
    
    func hardUpdate()
}
