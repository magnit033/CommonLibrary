//
//  CommonTitleCellViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 01.12.2021.
//

import UIKit

public protocol CommonTitleCellViewModelProtocol {
    
    var title: String { get }
    var titleSize: CGFloat { get }
    var titleColor: UIColor { get }
    var titleAlignment: NSTextAlignment { get }
}
