//
//  CommonButtonViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 08.12.2021.
//

import UIKit

public class CommonButtonViewModel: CommonButtonViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public init(title: String, titleColor: UIColor, config: CommonConfig) {
        self.title = title
        self.titleColor = titleColor
        self.config = config
    }
    
    // MARK: - CommonButtonViewModelProtocol
    
    public var title: String
    public var titleColor: UIColor
    public var config: CommonConfig
    
}
