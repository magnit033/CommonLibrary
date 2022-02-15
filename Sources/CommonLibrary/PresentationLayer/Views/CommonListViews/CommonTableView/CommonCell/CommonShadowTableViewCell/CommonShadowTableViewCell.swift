//
//  CommonShadowTableViewCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 26.10.2021.
//

import UIKit

open class CommonShadowTableViewCell: CommonTableCell, CommonListViewDelegate {

    // MARK: - Properties
    
    class open  override var identifier: String {
        return "CommonShadowTableViewCell"
    }
    
    private let tableView = CommonFixedTableView()
    private let containerView = UIView()
    
    private var cellViewModel: CommonShadowTableViewCellViewModel? {
        return self.viewModel as? CommonShadowTableViewCellViewModel
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
        self.containerView.backgroundColor = UIColor.clear
    }
    
    open override func setup() {
        
        super.setup()
        
        self.containerView.layer.cornerRadius = 16
        
        self.tableView.alwaysBounceVertical = false
        self.tableView.listViewDelegate = self
        self.tableView.layer.cornerRadius = 16
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.containerView)
        self.containerView.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        self.containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        self.containerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        self.containerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        
        self.containerView.addSubview(self.tableView)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.topAnchor.constraint(equalTo: self.containerView.topAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor).isActive = true
        self.tableView.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor).isActive = true
        self.tableView.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor).isActive = true
    }
}
