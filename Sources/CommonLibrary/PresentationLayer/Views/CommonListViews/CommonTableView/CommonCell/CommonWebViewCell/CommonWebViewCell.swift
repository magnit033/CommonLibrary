//
//  CommonWebViewCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import UIKit
import WebKit

open class CommonWebViewCell: CommonTableCell {
    
    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonWebViewCell"
    }
    
    private let webView = WKWebView()
    
    // MARK: - Override
    
    open override func updateView() {
        super.updateView()
        
        guard
            let viewModel = viewModel as? CommonWebViewCellViewModel,
            let url = viewModel.url else {
                return
        }
        
        webView.load(URLRequest(url: url))
    }
    
    open override func setup() {
        super.setup()
        
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.webView)
        self.webView.translatesAutoresizingMaskIntoConstraints = false
        self.webView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.webView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.webView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.webView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
    }
}
