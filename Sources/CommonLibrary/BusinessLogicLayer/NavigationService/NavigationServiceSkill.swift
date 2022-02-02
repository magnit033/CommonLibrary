//
//  NavigationServiceViewDelegate.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 02.02.2022.
//

import UIKit

public protocol NavigationServiceSkill {
    
    func navigateBack()
    func navigateToRoot()
    func navigateTo(viewController: ViewControllerWrapper)
    func present(alertViewController: UIAlertController)
    func present(viewController: ViewControllerWrapper)
    func hideViewController()
    
}

public extension NavigationServiceSkill where Self: BaseViewController {
 
    func navigateBack() {
        self.services.navigationService.navigateBackNavigation(viewController: self, animated: true)
    }
    
    func navigateToRoot() {
        self.services.navigationService.navigateToRoot(from: self)
    }
    
    func navigateTo(viewController: ViewControllerWrapper) {
        self.services.navigationService.navigateInNavigation(targetViewController: viewController, from: self, animation: true)
    }
    
    func present(alertViewController: UIAlertController) {
        self.present(alertViewController, animated: true, completion: nil)
    }
    
    func present(viewController: ViewControllerWrapper) {
        self.services.navigationService.presentViewController(targetViewController: viewController, from: self, animation: true, withNavigation: true)
    }
    
    func hideViewController() {
        self.services.navigationService.hideViewController(viewController: self)
    }
    
}
