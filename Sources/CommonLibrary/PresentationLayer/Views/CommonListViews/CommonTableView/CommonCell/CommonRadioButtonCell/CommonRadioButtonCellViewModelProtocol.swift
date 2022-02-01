//
//  CommonRadioButtonCellViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import Foundation

public protocol CommonRadioButtonCellViewModelProtocol {
    
    var title: String { get }
    var rightTitle: String { get }
    var isSelected: Bool { get set }
    
}
