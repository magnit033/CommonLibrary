//
//  CommonTextFieldViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 16.11.2021.
//

import UIKit

public class CommonTextViewModel: CommonTextViewModelProtocol {
    
    // MARK: - Properties
    
    private let config: CommonTextViewConfig
    
    // MARK: - Lifecycle
    
    public init(config: CommonTextViewConfig, text: String) {
        
        self.config = config
        self.text = text
    }
    
    // MARK: - CommonTextFieldViewModelProtocol
    
    public var text: String
    public var placeHolder: String {
        return self.config.placeHolder
    }
    public var keyboardType: UIKeyboardType {
        return self.config.keyboardType
    }
    public var autocapitalizationType: UITextAutocapitalizationType {
        return self.config.autocapitalizationType
    }
    public var returnKeyType: UIReturnKeyType {
        return self.config.returnKeyType
    }
    public var autocorrectionType: UITextAutocorrectionType {
        return self.config.autocorrectionType
    }
    public var languageCode: String {
        return config.languageCode
    }
    public var font: UIFont {
        return config.font
    }
}
