//
//  CommonSegmentedViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 13.01.2022.
//

import Foundation

public class CommonSegmentedViewModel: CommonSegmentedViewModelProtocol {
    
    // MARK: - Lifecycle
    
    public init(segments: [String], selected: Int, config: CommonConfig) {
        self.segments = segments
        self.initialSelected = selected
        self.config = config
    }
     
    // MARK: - CommonSegmentedViewModelProtocol
    
    public var segments: [String]
    public var initialSelected: Int
    public var config: CommonConfig
    
}
