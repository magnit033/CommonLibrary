//
//  NavigationService.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 26.10.2021.
//

import UIKit

open class NavigationService: NavigationServiceProtocol {
    
    // MARK: - Singlton
    
    static public let shared = NavigationService()
    private init() {}
    
    // MARK: - NavigationServiceProtocol
    
    // Показать контроллер поверх экрана
    public func presentViewController(targetViewController: ViewControllerWrapper, from viewController: UIViewController?, animation: Bool, withNavigation: Bool) {
        guard let VC = withNavigation ? targetViewController.embededViewController : targetViewController.viewController else {
            return
        }
        viewController?.present(VC, animated: animation, completion: nil)
    }
    
    // Спрятать контроллер
    public func hideViewController(viewController: UIViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
    
    // Осуществляет переход на указанный ViewController
    public func navigateInNavigation(targetViewController: ViewControllerWrapper, from viewController: UIViewController?, animation: Bool) {
        guard let parentVC = viewController,
            let navVC = parentVC.navigationController else {
            return
        }
        navVC.pushViewController(targetViewController.viewController, animated: animation)
    }
    
    // Осуществляет возврат на предыдущий контролер
    public func navigateBackNavigation(viewController: UIViewController, animated: Bool) {
        guard let navVC = viewController.navigationController else {
            return
        }
        navVC.popViewController(animated: animated)
    }
    
    // Возврат на главный экран
    public func navigateToRoot(from VC: UIViewController) {
        guard let navVC = VC.navigationController else {
            return
        }
        navVC.popToRootViewController(animated: true)
    }
}
