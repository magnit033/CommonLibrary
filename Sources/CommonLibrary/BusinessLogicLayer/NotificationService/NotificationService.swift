//
//  NotificationService.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import Foundation

public class NotificationService: NotificationServiceProtocol, NotificationServicePublisher {
    
    // MARK: - Properties
    
    public var listeners = [NotificationServiceListener]()
    
    // MARK: - NotificationServicePublisher
    
    public func addListener(_ listener: NotificationServiceListener) {
        if listeners.filter({ $0.isEqual(to: listener) }).isEmpty {
            listeners.append(listener)
        }
    }
    
    public func removeListener(_ listener: NotificationServiceListener) {
        
        for i in 0..<listeners.count {
            if listeners[i].isEqual(to: listener) {
                listeners.remove(at: i)
                return
            }
        }
    }
    
    // MARK: - NotificationServiceProtocol
    
}
