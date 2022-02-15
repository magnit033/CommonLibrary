//
//  CommonCollectionItem.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 15.12.2021.
//

import UIKit

open class CommonCollectionItem: UICollectionViewCell {
    
    class open var identifier: String {
        return "CommonCollectionItem"
    }
    
    public var viewModel: CommonCollectionItemViewModel? {
        didSet {
            self.updateView()
        }
    }
    public weak var delegate: CommonListViewDelegate?
    
    private let rightSeparatorCell: UIView = UIView()
    
    // MARK: - Lifecycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupLayout()
        self.setup()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.setupLayout()
        self.setup()
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//
//        self.setupLayout()
//        self.setup()
//    }
    
    // MARK: - To Override
    
    open func updateView() {
        
        self.rightSeparatorCell.backgroundColor = self.viewModel?.config.separatorColor
    }
    
    open func setup() {
        
    }
    
    open func setupLayout() {
        
        self.addSubview(self.rightSeparatorCell)
        self.rightSeparatorCell.translatesAutoresizingMaskIntoConstraints = false
        self.rightSeparatorCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0.5).isActive = true
        self.rightSeparatorCell.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.rightSeparatorCell.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.rightSeparatorCell.widthAnchor.constraint(equalToConstant: 0.5).isActive = true
        
    }
}
