//
//  CommonSearchController.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import UIKit

public class CommonSearchController: UISearchController, UISearchResultsUpdating, UISearchControllerDelegate {
    
    // MARK: - Properties
    
    public weak var searchDelegate: CommonSearchControllerDelegate?
    
    public var viewModel: CommonSearchControllerViewModel? {
        didSet {
            guard let viewModel = viewModel else {
                return
            }
            self.searchBar.placeholder = viewModel.placeholder
            if #available(iOS 13.0, *) {
                self.searchBar.searchTextField.font = viewModel.config.font
            }
        }
    }
    
    // MARK: - Lifecycle
    
    public init() {
        super.init(searchResultsController: nil)
        
        self.searchResultsUpdater = self
        self.delegate = self
        if #available(iOS 9.1, *) {
            self.obscuresBackgroundDuringPresentation = false
        }
        self.searchBar.autocapitalizationType = .none
        self.searchBar.setValue("Отмена", forKey: "cancelButtonText")
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - UISearchResultsUpdating
    
    public func updateSearchResults(for searchController: UISearchController) {
        self.searchDelegate?.didEnter(string: searchController.searchBar.text ?? "")
    }
}
