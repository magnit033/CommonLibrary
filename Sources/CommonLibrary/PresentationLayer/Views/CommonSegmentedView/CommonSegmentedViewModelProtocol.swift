//
//  CommonSegmentedViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 13.01.2022.
//

import Foundation

public protocol CommonSegmentedViewModelProtocol {
    
    var segments: [String] { get }
    var initialSelected: Int { get }
    var config: CommonConfig { get }
}
