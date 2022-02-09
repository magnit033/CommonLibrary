//
//  BaseSearchViewController.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import UIKit

open class BaseSearchViewController: BaseTableViewController, CommonSearchControllerDelegate {
    
    // MARK: - Properties
    
    private let searchController = CommonSearchController()
    
    private var selfViewModel: BaseSearchViewModel? {
        return self.viewModel as? BaseSearchViewModel
    }
    
    // MARK: - Override
    
    open override func setupNavigation() {
        super.setupNavigation()
        
        guard let selfViewModel = selfViewModel else {
            return
        }
        
        self.searchController.viewModel = CommonSearchControllerViewModel(placeholder: "Поиск", config: selfViewModel.config)
        self.searchController.searchDelegate = self
        if #available(iOS 11.0, *) {
            self.navigationItem.searchController = self.searchController
        }
    }
    
    // MARK: - CommonSearchControllerDelegate
    
    open func didEnter(string: String) {
        self.selfViewModel?.didEnter(string: string)
    }
}
