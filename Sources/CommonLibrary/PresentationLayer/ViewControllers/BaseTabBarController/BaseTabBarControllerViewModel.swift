//
//  BaseTabBarControllerViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

open class BaseTabBarControllerViewModel: BaseTabBarControllerViewModelProtocol {
    
    // MARK: - Properties
    
    public let services = Services.shared
    
    // MARK: - Lifecycle
    
    public init() {
    }
    
    // MARK: - BaseTabBarControllerViewModelProtocol
    
    open var tintColor: UIColor {
        return UIColor.systemBlue
    }
    open var uselectedTintColor: UIColor {
        return UIColor.systemGray
    }
    
    open func viewControllers() -> [UIViewController] {
        return []
    }
    
    // MARK: - Private
    
}
