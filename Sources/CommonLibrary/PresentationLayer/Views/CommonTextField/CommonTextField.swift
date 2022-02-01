//
//  CommonTextField.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 07.12.2021.
//

import UIKit

public class CommonTextField: UITextField {
    
    public var languageCode: String? {
        didSet{
            if self.isFirstResponder{
                self.resignFirstResponder();
                self.becomeFirstResponder();
            }
        }
    }
    
    public override var textInputMode: UITextInputMode? {
        if let language_code = self.languageCode {
            for keyboard in UITextInputMode.activeInputModes {
                if let language = keyboard.primaryLanguage {
                    let locale = Locale.init(identifier: language)
                    if locale.languageCode == language_code {
                        return keyboard
                    }
                }
            }
        }
        return super.textInputMode;
    }
}
