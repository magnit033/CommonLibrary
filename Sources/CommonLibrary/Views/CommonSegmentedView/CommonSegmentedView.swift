//
//  CommonSegmentedView.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 13.01.2022.
//

import UIKit

public class CommonSegmentedView: UISegmentedControl {
   
    // MARK: - Properties
    
    public weak var delegate: CommonSegmentedViewDelegate?
    
    public var viewModel: CommonSegmentedViewModel? {
        didSet {
            guard let viewModel = viewModel else {
                return
            }
            self.removeAllSegments()
            self.configureSegments()
            self.selectedSegmentIndex = viewModel.initialSelected
        }
    }
    
    // MARK: - Private
    
    private func configureSegments() {
        guard let viewModel = viewModel else {
            return
        }
        
        for i in 0..<viewModel.segments.count {
            
            if #available(iOS 14.0, *) {
                self.insertSegment(action: UIAction(handler: { _ in
                    self.delegate?.didSelectSegment(segment: i)
                }), at: i, animated: false)
            } else {
                // Fallback on earlier versions
            }
            self.setTitle(viewModel.segments[i], forSegmentAt: i)
        }
    }
}
