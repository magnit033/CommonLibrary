//
//  CommonSubtitleCellViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

public protocol CommonSubtitleCellViewModelProtocol {
    
    var title: String { get }
    var titleColor: UIColor { get }
    var titleLines: Int { get }
    var subtitle: String { get }
    var subtitleColor: UIColor { get }

}
