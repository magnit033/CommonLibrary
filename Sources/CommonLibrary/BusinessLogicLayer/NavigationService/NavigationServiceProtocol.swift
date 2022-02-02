//
//  NavigationServiceProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 26.10.2021.
//

import UIKit

public protocol NavigationServiceProtocol {
    
    func presentViewController(targetViewController: ViewControllerWrapper, from viewController: UIViewController?, animation: Bool, withNavigation: Bool)
    func hideViewController(viewController: UIViewController)
    
    func navigateInNavigation(targetViewController: ViewControllerWrapper, from viewController: UIViewController?, animation: Bool)
    func navigateBackNavigation(viewController: UIViewController, animated: Bool)
    func navigateToRoot(from VC: UIViewController)
}
