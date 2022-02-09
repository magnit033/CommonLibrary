//
//  CommonButton.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 08.12.2021.
//

import UIKit

public class CommonButton: UIButton {
    
    // MARK: - Properties
    
    public var viewModel: CommonButtonViewModel? {
        didSet {
            self.setup()
        }
    }
    
    // MARK: - Lifecycle
    
    public init() {
        super.init(frame: CGRect.zero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Private
    
    private func setup() {
        guard let viewModel = viewModel else {
            return
        }
        
        self.setTitle(viewModel.title, for: .normal)
        self.setTitleColor(viewModel.titleColor, for: .normal)
        self.setTitleColor(viewModel.titleColor, for: .highlighted)
        self.titleLabel?.font = viewModel.config.font
    }
}
