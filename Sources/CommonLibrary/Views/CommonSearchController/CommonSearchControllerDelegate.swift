//
//  CommonSearchControllerDelegate.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import Foundation

public protocol CommonSearchControllerDelegate: AnyObject {
    
    func didEnter(string: String)
}
