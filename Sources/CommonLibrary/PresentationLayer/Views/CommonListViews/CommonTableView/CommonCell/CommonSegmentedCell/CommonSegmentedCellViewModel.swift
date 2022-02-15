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
    
    public init(segments: [CommonSegmentedCellSegment],
                config: CommonConfig) {
        self.segments = segments
        super.init(config: config, object: nil)
        
        self.cellHeight = 80
    }
    
    // MARK: - Override
    
    open override var identifier: String {
        return CommonSegmentedCell.identifier
    }
    
    open override var type: CommonTableCell.Type {
        return CommonSegmentedCell.self
    }
    
    // MARK: - CommonSegmentedCellViewModelProtocol
    
    public var selected: Int = 0
    public var segments: [CommonSegmentedCellSegment]
}
