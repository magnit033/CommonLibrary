//
//  BaseViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 09.11.2021.
//

import UIKit

public protocol BaseViewModelProtocol {
    
    var delegate: BaseViewModelDelegate? { get set }
    var config: CommonConfig { get }
    
    var backGroundColor: UIColor { get }
    
    func navigationTitle() -> String?
    
    var rightNavigationAcionImage: UIImage? { get }
    func rightNavigationAction()
    
    var leftNavigationAcionImage: UIImage? { get }
    func leftNavigationAction()
    
    var tabBarItem: UITabBarItem? { get }
    
    func subscribeListeners()
    func removeListeners()
    
    func handleViewWillAppear()
    func handleViewDidAppear()
}
