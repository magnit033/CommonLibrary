//
//  BaseSegmentedViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 19.01.2022.
//

import Foundation

public protocol BaseSegmentedViewModelProtocol {
    
    var selectedSegment: Int { get }
    var segments: [String] { get }
    
    func didSelectSegment(segment: Int)
    
}
