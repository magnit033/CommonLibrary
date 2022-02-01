//
//  CommonTableViewDelegate.swift
//  ios.tec.prizrak.2.0
//
//  Created by Shupegin Sergey on 13.10.2021.
//  Copyright © 2021 tec-electronics. All rights reserved.
//

import Foundation

public protocol CommonListViewDelegate: AnyObject {
    
    func didSelectCell(object: Any?)
    
}
