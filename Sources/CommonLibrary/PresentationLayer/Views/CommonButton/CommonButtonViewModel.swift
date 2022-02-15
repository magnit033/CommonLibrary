//
//  CommonButtonViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 08.12.2021.
//

import UIKit

public class CommonButtonViewModel: CommonButtonViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public init(title: String, config: CommonConfig) {
        self.title = title
        self.config = config
    }
    
    // MARK: - CommonButtonViewModelProtocol
    
    public var title: String
    public var config: CommonConfig
    
}
