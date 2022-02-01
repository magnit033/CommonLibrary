//
//  CommonSegmentedCellViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 13.01.2022.
//

import Foundation

public protocol CommonSegmentedCellViewModelProtocol {
    
    var selected: Int { get set }
    var segments: [CommonSegmentedCellSegment] { get }
    
}
