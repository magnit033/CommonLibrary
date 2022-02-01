//
//  CommonTextFieldConfig.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 16.11.2021.
//

import UIKit

public class CommonTextViewConfig {
    
    public let placeHolder: String
    public let keyboardType: UIKeyboardType
    public let autocapitalizationType: UITextAutocapitalizationType
    public let returnKeyType: UIReturnKeyType
    public let autocorrectionType: UITextAutocorrectionType
    public let languageCode: String
    
    // MARK: - Lifecycle
    
    public init(placeHolder: String,
         keyboardType: UIKeyboardType = .default,
         autocapitalizationType: UITextAutocapitalizationType = .sentences,
         returnKeyType: UIReturnKeyType = .default,
         autocorrectionType: UITextAutocorrectionType = .yes,
         languageCode: String = "en") {
        
        self.placeHolder = placeHolder
        self.keyboardType = keyboardType
        self.autocapitalizationType = autocapitalizationType
        self.returnKeyType = returnKeyType
        self.autocorrectionType = autocorrectionType
        self.languageCode = languageCode
    }
}
