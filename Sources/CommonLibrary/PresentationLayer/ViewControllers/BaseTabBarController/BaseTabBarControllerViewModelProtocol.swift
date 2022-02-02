//
//  BaseTabBarControllerViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

public protocol BaseTabBarControllerViewModelProtocol {
    
    var tintColor: UIColor { get }
    var uselectedTintColor: UIColor { get }
    
    func viewControllers() -> [UIViewController]
    
}
