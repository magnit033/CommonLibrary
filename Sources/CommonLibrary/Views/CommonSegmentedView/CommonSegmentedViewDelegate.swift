//
//  CommonSegmentedViewDelegate.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 13.01.2022.
//

import Foundation

public protocol CommonSegmentedViewDelegate: AnyObject {
    
    func didSelectSegment(segment: Int)
    
}
