//
//  CommonCollectionCell.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 14.12.2021.
//

import UIKit

open class CommonCollectionCell: CommonTableCell, CommonListViewDelegate {

    // MARK: - Properties
    
    class override open var identifier: String {
        return "CommonCollectionCell"
    }
    
    private var collectionView = CommonCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    private var cellViewModel: CommonCollectionCellViewModel? {
        return self.viewModel as? CommonCollectionCellViewModel
    }
    
    // MARK: - CommonListViewDelegate
    
    open func didSelectCell(object: Any?) {
        self.delegate?.didSelectCell(object: object)
    }
    
    // MARK: - Override
    
    open override func updateView() {
        super.updateView()
        
        guard let cellViewModel = cellViewModel else {
            return
        }
        self.collectionView.viewModel = CommonCollectionViewModel(itemViewModels: cellViewModel.itemViewModels)
    }
    
    open override func setup() {
        super.setup()
        
        self.collectionView.listViewDelegate = self
    }
    
    open override func setupLayout() {
        super.setupLayout()
        
        self.contentView.addSubview(self.collectionView)
        self.collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.collectionView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.collectionView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.collectionView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        self.collectionView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
    }
}
