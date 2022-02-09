//
//  File.swift
//  
//
//  Created by Shupegin Sergey on 09.02.2022.
//

import UIKit

open class CommonConfig {
    
    public init() {
    }
    
    open var font: UIFont {
        return UIFont.systemFont(ofSize: 17)
    }
    
    open var boldFont: UIFont {
        return UIFont.boldSystemFont(ofSize: 17)
    }
    
    open var errorColor: UIColor {
        return UIColor.red
    }
}
