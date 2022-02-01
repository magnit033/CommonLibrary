//
//  CommonCollectionItemViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 15.12.2021.
//

import UIKit

public protocol CommonCollectionItemViewModelProtocol {
    
    var object: CommonTableCellObjects? { get }
    var identifier: String { get }
    
    var rightSeparatorColor: UIColor { get }
    var itemWidth: CGFloat { get }
    var itemHeight: CGFloat { get }
}
