//
//  BaseTabBarControllerViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

class BaseTabBarControllerViewModel: BaseTabBarControllerViewModelProtocol {
    
    // MARK: - Properties
    
    private let services = Services.shared
    
    // MARK: - BaseTabBarControllerViewModelProtocol
    
    func viewControllers() -> [UIViewController] {
        return []
    }
    
    // MARK: - Private
    
}
