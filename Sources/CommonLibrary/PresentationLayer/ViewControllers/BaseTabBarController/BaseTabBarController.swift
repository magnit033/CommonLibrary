//
//  BaseTabBarController.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

open class BaseTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    // MARK: - Properties
    
    public var viewModel: BaseTabBarControllerViewModelProtocol?
    
    // MARK: - Lifecycle
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setup()
    }
    
    // MARK: - Private
    
    private func setup() {
        guard let viewModel = viewModel else {
            return
        }
        self.viewControllers = viewModel.viewControllers()
    }
}
