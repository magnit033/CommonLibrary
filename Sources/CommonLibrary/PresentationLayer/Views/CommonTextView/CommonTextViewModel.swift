//
//  CommonTextFieldViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 16.11.2021.
//

import UIKit

public class CommonTextViewModel: CommonTextViewModelProtocol {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    public init(config: CommonTextViewConfig, text: String) {
        
        self.config = config
        self.text = text
    }
    
    // MARK: - CommonTextFieldViewModelProtocol
    
    public var text: String
    public let config: CommonTextViewConfig
    
}
