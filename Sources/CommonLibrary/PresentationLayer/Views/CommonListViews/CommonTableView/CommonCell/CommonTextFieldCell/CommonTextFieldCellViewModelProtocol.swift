//
//  CommonTextFieldCellViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 10.11.2021.
//

import UIKit

public protocol CommonTextFieldCellViewModelProtocol {
    
    var text: String { get set }
    var placeHolder: String { get }
    var returnType: UIReturnKeyType { get }
    var languageCode: String { get }
    var keyboardType: UIKeyboardType { get }
    
    func close()
}
