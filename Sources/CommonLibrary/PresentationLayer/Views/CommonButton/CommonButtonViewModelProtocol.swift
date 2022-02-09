//
//  CommonButtonViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 08.12.2021.
//

import UIKit

public protocol CommonButtonViewModelProtocol {
    
    var title: String { get }
    var titleColor: UIColor { get }
    var config: CommonConfig { get }
    
}
