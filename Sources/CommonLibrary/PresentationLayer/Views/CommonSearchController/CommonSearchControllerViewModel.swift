//
//  CommonSearchControllerViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import Foundation

public class CommonSearchControllerViewModel: CommonSearchControllerViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public init(placeholder: String, config: CommonConfig) {
        self.placeholder = placeholder
        self.config = config
    }
    
    // MARK: - CommonSearchControllerViewModelProtocol
    
    public var placeholder: String
    public var config: CommonConfig
    
}
