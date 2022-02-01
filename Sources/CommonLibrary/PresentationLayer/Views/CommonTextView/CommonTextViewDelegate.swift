//
//  FloatTextFieldDelegate.swift
//  Kalibri
//
//  Created by Shupegin Sergey on 05/05/2019.
//  Copyright © 2019 Shupegin Sergey. All rights reserved.
//

import Foundation

public protocol CommonTextViewDelegate: AnyObject {
    
    func textFieldShouldReturn(commonTextField: CommonTextView)
    func textFieldDidChanged(commonTextField: CommonTextView)
    func textFiledShouldBecameFirstResponder(commonTextField: CommonTextView)
}
