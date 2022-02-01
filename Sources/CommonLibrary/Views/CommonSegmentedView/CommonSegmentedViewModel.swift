//
//  CommonSegmentedViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 13.01.2022.
//

import Foundation

public class CommonSegmentedViewModel: CommonSegmentedViewModelProtocol {
    
    // MARK: - Lifecycle
    
    init(segments: [String], selected: Int) {
        self.segments = segments
        self.initialSelected = selected
    }
     
    // MARK: - CommonSegmentedViewModelProtocol
    
    var segments: [String]
    var initialSelected: Int
    
}
