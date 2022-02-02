//
//  CommonTableView.swift
//  ios.tec.prizrak.2.0
//
//  Created by Shupegin Sergey on 30.09.2021.
//  Copyright © 2021 tec-electronics. All rights reserved.
//

import UIKit

open class CommonTableView: UITableView,
                       UITableViewDataSource,
                       UITableViewDelegate,
                       CommonListViewDelegate {
    
    // MARK: - Properties
    
    public var viewModel: CommonTableViewModelProtocol? {
        didSet {
            self.updateView()
            self.reload()
        }
    }

    public weak var listViewDelegate: CommonListViewDelegate?
    
    // MARK: - Lifecycle
    
    public override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: - UITableViewDataSource
    
    open func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else {
            return 0
        }
        let number = viewModel.numberOfRows()
        return number
    }
    
    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let viewModel = viewModel else {
            return UITableViewCell()
        }
        
        if let cellViewModel = viewModel.cellViewModel(indexPath: indexPath),
           let cell = tableView.dequeueReusableCell(withIdentifier: cellViewModel.identifier, for: indexPath) as? CommonTableCell {

            cell.viewModel = cellViewModel
            cell.delegate = self
            return cell
        }
        
        return UITableViewCell()
    }
    
    // MARK: - UITableViewDelegate
    
    // MARK: - CommonTableCellDelegate
    
    open func didSelectCell(object: Any?) {
        self.listViewDelegate?.didSelectCell(object: object)
    }
    
    // MARK: - Private
    
    private func updateView() {
        guard let viewModel = viewModel else {
            return
        }
        self.alwaysBounceVertical = viewModel.alwaysBounceVertical
    }
    
    private func reload() {
        
        self.separatorStyle = .none
        self.reloadData()
        self.backgroundColor = UIColor.clear
    }
    
    private func setup() {
        
        self.allowsSelection = false
        self.separatorStyle = .none
        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        self.tableFooterView = UIView()
        self.delegate = self
        self.dataSource = self
        
        self.register(CommonEmptyCell.self, forCellReuseIdentifier: CommonEmptyCell.identifier)
        self.register(CommonButtonCell.self, forCellReuseIdentifier: CommonButtonCell.identifier)
        self.register(CommonTitleCell.self, forCellReuseIdentifier: CommonTitleCell.identifier)
        self.register(CommonRightTitleCell.self, forCellReuseIdentifier: CommonRightTitleCell.identifier)
        self.register(CommonTextFieldCell.self, forCellReuseIdentifier: CommonTextFieldCell.identifier)
        self.register(CommonSubtitleCell.self, forCellReuseIdentifier: CommonSubtitleCell.identifier)
        self.register(CommonRadioButtonCell.self, forCellReuseIdentifier: CommonRadioButtonCell.identifier)
        self.register(CommonTableViewCell.self, forCellReuseIdentifier: CommonTableViewCell.identifier)
        self.register(CommonShadowTableViewCell.self, forCellReuseIdentifier: CommonShadowTableViewCell.identifier)
        self.register(CommonCollectionCell.self, forCellReuseIdentifier: CommonCollectionCell.identifier)
        self.register(CommonAttributedTitleCell.self, forCellReuseIdentifier: CommonAttributedTitleCell.identifier)
        self.register(CommonWebViewCell.self, forCellReuseIdentifier: CommonWebViewCell.identifier)
        self.register(CommonSegmentedCell.self, forCellReuseIdentifier: CommonSegmentedCell.identifier)
    }
}
