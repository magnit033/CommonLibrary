//
//  BaseTableNavigationViewController.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 02.02.2022.
//

import UIKit

open class BaseTableViewControllerWrapper: ViewControllerWrapper {
    
    // MARK: - Lifecycle
    
    public init(viewModel: BaseTableViewModel) {
        let resultVC = BaseTableViewController()
        resultVC.viewModel = viewModel
        resultVC.modalPresentationStyle = .fullScreen
        super.init(viewController: resultVC)
    }
}
