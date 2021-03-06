//
//  CommonTableCell.swift
//  ios.tec.prizrak.2.0
//
//  Created by Shupegin Sergey on 13.10.2021.
//  Copyright © 2021 tec-electronics. All rights reserved.
//

import UIKit

open class CommonTableCell: UITableViewCell, CommonTableCellViewModelDelegate {
    
    // MARK: - Properties
    
    open class var identifier: String {
        return "CommonThemeCell"
    }
    
    private let separatorCell: UIView = UIView()
    private let heightView = UIView()
    private var heightConstraint: NSLayoutConstraint?
    
    public var viewModel: CommonTableCellViewModel? {
        didSet {
            self.updateView()
        }
    }
    public weak var delegate: CommonListViewDelegate?
    
    // MARK: - Lifecycle
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupLayout()
        self.setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.setupLayout()
        self.setup()
    }
    
    // MARK: - CommonTableCellViewModelDelegate
    
    open func update() {
        self.updateView()
    }
    
    open func select(object: Any?) {
        self.delegate?.didSelectCell(object: object)
    }
    
    // MARK: - To Override
    
    open func updateView() {
        guard let viewModel = viewModel else {
            return
        }
        viewModel.delegate = self
        self.separatorCell.backgroundColor = viewModel.config.separatorColor
        self.backgroundColor = viewModel.config.backgroundColor
        self.heightConstraint?.constant = viewModel.cellHeight
    }
    
    open func setup() {
        
        self.heightView.backgroundColor = UIColor.clear
        self.contentView.sendSubviewToBack(self.heightView)
    }
    
    open func setupLayout() {
        
        self.contentView.addSubview(self.heightView)
        self.heightView.translatesAutoresizingMaskIntoConstraints = false
        self.heightView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.heightView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.heightView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        self.heightView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        self.heightConstraint = self.heightView.heightAnchor.constraint(greaterThanOrEqualToConstant: 60)
        self.heightConstraint?.isActive = true
        
        self.addSubview(self.separatorCell)
        self.separatorCell.translatesAutoresizingMaskIntoConstraints = false
        self.separatorCell.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.separatorCell.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.separatorCell.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.separatorCell.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
    }
}
