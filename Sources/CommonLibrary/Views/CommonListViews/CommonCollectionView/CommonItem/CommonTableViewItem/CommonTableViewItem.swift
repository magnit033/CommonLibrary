//
//  CommonTableViewItem.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 15.12.2021.
//

import UIKit

open class CommonTableViewItem: CommonCollectionItem, CommonListViewDelegate {

    override class open var identifier: String {
        return "CommonTableViewItem"
    }
    
    private let tableView = CommonFixedTableView()
    
    private var selfViewModel: CommonTableViewItemViewModel? {
        return self.viewModel as? CommonTableViewItemViewModel
    }
    
    // MARK: - CommonListViewDelegate
    
    open func didSelectCell(object: Any?) {
        self.delegate?.didSelectCell(object: object)
    }
    
    // MARK: - Override
    
    open override func updateView() {
        super.updateView()
        guard let selfViewModel = selfViewModel else {
            return
        }
        self.tableView.viewModel = CommonTableViewModel(cellViewModels: selfViewModel.cellViewModels, alwaysBounceVertical: false)
        self.tableView.listViewDelegate = self
    }
    
    open override func setupLayout() {
        
        self.contentView.addSubview(self.tableView)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.tableView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        self.tableView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        
        super.setupLayout()
    }
}
