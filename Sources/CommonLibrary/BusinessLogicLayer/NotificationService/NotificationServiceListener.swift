//
//  NotificationServiceListener.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import Foundation

public protocol NotificationServiceListener {
    
    func isEqual(to other: NotificationServiceListener) -> Bool
    
}

public extension NotificationServiceListener where Self: AnyObject {
    func isEqual(to other: NotificationServiceListener) -> Bool {
        return self === other as AnyObject
    }
}
