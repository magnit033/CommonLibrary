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
    
    open var titleColor: UIColor {
        return UIColor.black
    }
    
    open var titleSize: CGFloat {
        return 17
    }
    
    open var titleAlignment: NSTextAlignment {
        return .left
    }
    
    open var subtitleColor: UIColor {
        return UIColor.systemGray
    }
    
    open var separatorColor: UIColor {
        return UIColor.clear
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
    
    open var backgroundColor: UIColor {
        return UIColor.clear
    }
}
