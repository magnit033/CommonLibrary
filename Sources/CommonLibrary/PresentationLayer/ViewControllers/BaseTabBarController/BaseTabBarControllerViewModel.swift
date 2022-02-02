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
    
    // MARK: - BaseTabBarControllerViewModelProtocol
    
    open func viewControllers() -> [UIViewController] {
        return []
    }
    
    // MARK: - Private
    
}
