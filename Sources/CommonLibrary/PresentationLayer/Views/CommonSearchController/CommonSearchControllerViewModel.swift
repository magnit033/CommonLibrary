//
//  CommonSearchControllerViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import Foundation

public class CommonSearchControllerViewModel: CommonSearchControllerViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public init(placeholder: String) {
        self.placeholder = placeholder
    }
    
    // MARK: - CommonSearchControllerViewModelProtocol
    
    public var placeholder: String
    
}
