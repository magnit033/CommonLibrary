//
//  CommonSegmentedViewModelProtocol.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 13.01.2022.
//

import Foundation

protocol CommonSegmentedViewModelProtocol {
    
    var segments: [String] { get }
    var initialSelected: Int { get }
}
