//
//  BaseSegmentedViewController.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 19.01.2022.
//

import Foundation

open class BaseSegmentedViewController: BaseTableViewController, CommonSegmentedViewDelegate {
    
    // MARK: - Properties
    
    private let segmentedControl = CommonSegmentedView()
    
    private var selfViewModel: BaseSegmentedViewModel? {
        return self.viewModel as? BaseSegmentedViewModel
    }
    
    // MARK: - Lifecycle
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.topTableViewConstraint?.constant = 80
        self.setupSegmentedControl()
    }
    
    // MARK: - CommonSegmentedViewDelegate
    
    open func didSelectSegment(segment: Int) {
        self.selfViewModel?.didSelectSegment(segment: segment)
    }
    
    // MARK: - Override
    
    open override func updateView() {
        super.updateView()
        
        guard let selfViewModel = self.selfViewModel else {
            return
        }
        self.segmentedControl.viewModel = CommonSegmentedViewModel(segments: selfViewModel.segments,
                                                                   selected: selfViewModel.selectedSegment,
                                                                   config: selfViewModel.config)
    }
    
    // MARK: - Private
    
    private func setupSegmentedControl() {
        
        guard #available(iOS 11.0, *) else {
            return
        }
        
        self.view.addSubview(self.segmentedControl)
        self.segmentedControl.delegate = self
        self.segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        self.segmentedControl.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        self.segmentedControl.heightAnchor.constraint(equalToConstant: 48).isActive = true
        self.segmentedControl.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        self.segmentedControl.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16).isActive = true
    }
}
