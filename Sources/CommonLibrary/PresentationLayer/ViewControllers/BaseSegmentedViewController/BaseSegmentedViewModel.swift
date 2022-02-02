//
//  BaseSegmentedViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 19.01.2022.
//

import Foundation

open class BaseSegmentedViewModel: BaseTableViewModel, BaseSegmentedViewModelProtocol {
    
    // MARK: - BaseSegmentedViewModelProtocol
    
    public var selectedSegment: Int = 0
    
    open var segments: [String] {
        return ["", ""]
    }
    
    open func didSelectSegment(segment: Int) {
        self.selectedSegment = segment
    }
    
}
