//
//  CommonThemeCellViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 26.10.2021.
//

import UIKit

public protocol CommonTableViewCellViewModelProtocol: CommonTableCellViewModelProtocol {
    
    var cellViewModels: [CommonTableCellViewModel] { get }
    
}
