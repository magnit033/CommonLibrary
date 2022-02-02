//
//  NavigationViewController.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 02.02.2022.
//

import UIKit

open class ViewControllerWrapper {
    
    // MARK: - Properties
    
    public let viewController: UIViewController
    
    // MARK: - Lifecycle
    
    public init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    // MARK: - To Override
    
    public var embededViewController: UIViewController? {
        let navVC = UINavigationController(rootViewController: viewController)
        navVC.modalPresentationStyle = .fullScreen
        navVC.setNavigationBarHidden(false, animated: false)
        return navVC
    }
}
