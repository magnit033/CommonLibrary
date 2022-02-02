//
//  BaseViewModelDelegate.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 09.11.2021.
//

import UIKit

public protocol BaseViewModelDelegate: AnyObject, NavigationServiceSkill {
    
    func update()
}
