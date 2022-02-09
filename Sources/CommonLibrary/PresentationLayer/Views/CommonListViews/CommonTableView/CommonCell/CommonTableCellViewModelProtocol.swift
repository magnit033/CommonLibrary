//
//  CommonTableCellViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 06.12.2021.
//

import UIKit

public protocol CommonTableCellViewModelProtocol {
    
    var delegate: CommonTableCellViewModelDelegate? { get set }
    var config: CommonConfig { get }
    
    var object: CommonTableCellObjects? { get }
    var identifier: String { get }
    var separatorColor: UIColor? { get }
    var cellHeight: CGFloat { get }
    
    func selectCell(object: Any?)
}
