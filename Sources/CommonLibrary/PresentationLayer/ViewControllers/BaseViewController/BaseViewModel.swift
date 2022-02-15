//
//  BaseViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 28.10.2021.
//

import UIKit

open class BaseViewModel: BaseViewModelProtocol, NotificationServiceListener {
    
    // MARK: - Properties
    
    public let services = Services.shared
    
    // MARK: - Lifecycle
    
    public init() {
        
    }
    
    // MARK: - BaseViewModelProtocol
    
    public weak var delegate: BaseViewModelDelegate?
    
    open var config: CommonConfig = CommonConfig()
    
    open var backGroundColor: UIColor {
        return UIColor.white
    }
    
    open func navigationTitle() -> String? {
        return nil
    }
    
    open var rightNavigationAcionImage: UIImage? {
        return nil
    }
    open func rightNavigationAction() {
    }
    
    open var leftNavigationAcionImage: UIImage? {
        return nil
    }
    open func leftNavigationAction() {
    }
    
    open var tabBarItem: UITabBarItem? {
        return nil
    }
    
    open func subscribeListeners() {
        self.services.notificationService.addListener(self)
    }

    open func removeListeners() {
        self.services.notificationService.removeListener(self)
    }
    
    open func handleViewWillAppear() {
    }
    
    open func handleViewDidAppear() {
    }
    
}
