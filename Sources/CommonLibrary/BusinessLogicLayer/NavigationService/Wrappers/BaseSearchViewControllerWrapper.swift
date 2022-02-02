//
//  BaseSearchNavigationViewController.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 02.02.2022.
//

import Foundation

open class BaseSearchViewControllerWrapper: ViewControllerWrapper {

    // MARK: - Lifecycle

    public init(viewModel: BaseSearchViewModel) {
        let resultVC = BaseSearchViewController()
        resultVC.viewModel = viewModel
        resultVC.modalPresentationStyle = .fullScreen
        super.init(viewController: resultVC)
    }
}
