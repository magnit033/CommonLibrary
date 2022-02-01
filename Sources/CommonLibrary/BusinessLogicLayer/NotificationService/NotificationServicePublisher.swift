//
//  NotificationServicePublisher.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import Foundation

public protocol NotificationServicePublisher {
    
    func addListener(_ listener: NotificationServiceListener)
    func removeListener(_ listener: NotificationServiceListener)
    
}
