//
//  CommonCollectionItemViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 15.12.2021.
//

import UIKit

public protocol CommonCollectionItemViewModelProtocol {
    
    var object: CommonTableCellObjects? { get }
    var config: CommonConfig { get }
    
    var identifier: String { get }
    var type: CommonCollectionItem.Type { get }
    
    var itemWidth: CGFloat { get }
    var itemHeight: CGFloat { get }
}
