//
//  CommonTextFieldViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 16.11.2021.
//

import UIKit

public protocol CommonTextViewModelProtocol {
    
    var text: String { get }
    var placeHolder: String { get }
    var keyboardType: UIKeyboardType { get }
    var autocapitalizationType: UITextAutocapitalizationType { get }
    var returnKeyType: UIReturnKeyType { get }
    var autocorrectionType: UITextAutocorrectionType { get }
    var languageCode: String { get }
    var font: UIFont { get }
    
}
