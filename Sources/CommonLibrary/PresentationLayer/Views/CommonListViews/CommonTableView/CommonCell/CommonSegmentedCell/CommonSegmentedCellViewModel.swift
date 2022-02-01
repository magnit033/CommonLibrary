//
//  CommonSegmentedCellViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 13.01.2022.
//

import Foundation

open class CommonSegmentedCellViewModel: CommonTableCellViewModel, CommonSegmentedCellViewModelProtocol {
    
    // MARK: - Private
    
    // MARK: - Lifecycle
    
    public init(segments: [CommonSegmentedCellSegment]) {
        self.segments = segments
        super.init(object: nil)
        
        self.cellHeight = 80
    }
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonSegmentedCell.identifier
    }
    
    // MARK: - CommonSegmentedCellViewModelProtocol
    
    public var selected: Int = 0
    public var segments: [CommonSegmentedCellSegment]
}
