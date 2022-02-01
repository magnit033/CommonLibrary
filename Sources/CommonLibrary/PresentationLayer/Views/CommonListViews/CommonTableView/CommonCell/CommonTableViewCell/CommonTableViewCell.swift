//
//  CommonTableViewCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 29.12.2021.
//

import UIKit

open class CommonTableViewCell: CommonTableCell, CommonListViewDelegate {

    // MARK: - Properties
    
    class open override var identifier: String {
        return "CommonTableViewCell"
    }
    
    private let tableView = CommonFixedTableView()
    
    private var cellViewModel: CommonTableViewCellViewModel? {
        return self.viewModel as? CommonTableViewCellViewModel
    }
    
    // MARK: - Lifecycle

    // MARK: - CommonTableViewDelegate
    
    open func didSelectCell(object: Any?) {
        self.viewModel?.selectCell(object: object)
    }
    
    // MARK: - IBOutlets
    
    // MARK: - Override
    
    open override func updateView() {
        super.updateView()
        
        guard let cellViewModel = cellViewModel else {
            return
        }
        self.tableView.viewModel = CommonTableViewModel(cellViewModels: cellViewModel.cellViewModels, alwaysBounceVertical: false)
    }
    
    open override func setup() {
        
        super.setup()
        
        self.tableView.alwaysBounceVertical = false
        self.tableView.listViewDelegate = self
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.tableView)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.tableView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        self.tableView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
    }
}
