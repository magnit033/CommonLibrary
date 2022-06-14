//
//  BaseCollectionViewControllerWrapper.swift
//  
//
//  Created by Shupegin Sergey on 14.06.2022.
//

import Foundation

open class BaseCollectionViewControllerWrapper: ViewControllerWrapper {

    // MARK: - Lifecycle

    public init(viewModel: BaseCollectionViewModel) {
        let resultVC = BaseCollectionViewController()
        resultVC.viewModel = viewModel
        resultVC.modalPresentationStyle = .fullScreen
        super.init(viewController: resultVC)
    }
}
