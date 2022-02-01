//
//  CommonTableCellObjects.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import Foundation

public struct CommonTableCellObjects {
    
    public let name: String
    public let object: Any?
    
    public init(name: String, object: Any?) {
        self.name = name
        self.object = object
    }
}
