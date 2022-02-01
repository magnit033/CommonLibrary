//
//  FloatTextFieldProtocol.swift
//  Kalibri
//
//  Created by Shupegin Sergey on 04/05/2019.
//  Copyright © 2019 Shupegin Sergey. All rights reserved.
//

import Foundation

public protocol CommonTextViewProtocol: AnyObject {
    
    var viewModel: CommonTextViewModel? { get set }
    var delegate: CommonTextViewDelegate? { get set }
    var text: String { get }
    
    func open()
    func close()
    func setRelevantState()
    func setWarning()
    
}
