//
//  CommonSegmentedCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 13.01.2022.
//

import UIKit

open class CommonSegmentedCell: CommonTableCell, CommonSegmentedViewDelegate {
    
    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonSegmentedCell"
    }
    
    private let segmentedControl = CommonSegmentedView()
    
    private var selfViewModel: CommonSegmentedCellViewModel? {
        return self.viewModel as? CommonSegmentedCellViewModel
    }
    
    // MARK: - Override
    
    open override func updateView() {
        
        super.updateView()
        
        guard let selfViewModel = self.selfViewModel else {
            return
        }
        self.segmentedControl.viewModel = CommonSegmentedViewModel(segments: selfViewModel.segments.map({ $0.name }),
                                                                   selected: selfViewModel.selected,
                                                                   config: selfViewModel.config)
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.segmentedControl)
        self.segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        self.segmentedControl.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16).isActive = true
        self.segmentedControl.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -16).isActive = true
        self.segmentedControl.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        self.segmentedControl.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        
    }
    
    open override func setup() {
        super.setup()
        
        self.segmentedControl.delegate = self
    }
    
    // MARK: - CommonSegmentedViewDelegate
    
    public func didSelectSegment(segment: Int) {
        
        self.selfViewModel?.selected = segment
        self.delegate?.didSelectCell(object: self.selfViewModel?.segments[segment].object)
    }
    
}
