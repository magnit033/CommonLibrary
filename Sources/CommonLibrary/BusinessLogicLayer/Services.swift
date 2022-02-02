//
//  File.swift
//  
//
//  Created by Shupegin Sergey on 02.02.2022.
//

import Foundation

open class Services {
    
    public static let shared = Services()
    private init() {
    }
    
    // MARK: - Services
    
    open var navigationService: NavigationServiceProtocol {
        return NavigationService.shared
    }
    
    open var notificationService: NotificationService {
        return NotificationService.shared
    }
}
