//
//  NotificationService.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import Foundation

open class NotificationService: NotificationServicePublisher {
    
    // MARK: - Singlton
    
    static public let shared = NotificationService()
    private init () {}
    
    // MARK: - Properties
    
    public var listeners = [NotificationServiceListener]()
    
    // MARK: - NotificationServicePublisher
    
    public func addListener(_ listener: NotificationServiceListener) {
        if listeners.filter({ self.compareListeners(first: listener, second: $0) }).isEmpty {
            listeners.append(listener)
        }
    }
    
    public func removeListener(_ listener: NotificationServiceListener) {
        
        for i in 0..<listeners.count {
            if self.compareListeners(first: listener, second: listeners[i]) {
                listeners.remove(at: i)
                return
            }
        }
    }
    
    // MARK: - NotificationServiceProtocol
    
    // MARK: - Private
    
    private func compareListeners(first: NotificationServiceListener, second: NotificationServiceListener) -> Bool {
        return first as AnyObject === second as AnyObject
    }
}
