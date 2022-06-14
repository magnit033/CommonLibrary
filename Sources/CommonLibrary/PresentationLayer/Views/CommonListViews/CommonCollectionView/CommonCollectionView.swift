//
//  CommonCollectionView.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 14.12.2021.
//

import UIKit

open class CommonCollectionView: UICollectionView,
                            UICollectionViewDelegate,
                            UICollectionViewDataSource,
                            UICollectionViewDelegateFlowLayout,
                            CommonListViewDelegate {
    
    // MARK: - Properties
    
    public var viewModel: CommonCollectionViewModelProtocol? {
        didSet {
            self.registerCells()
            self.reload()
        }
    }

    public weak var listViewDelegate: CommonListViewDelegate?
    
    // MARK: - Lifecycle
    
    public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    // MARK: - UICollectionViewDataSource
    
    open func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let viewModel = viewModel else {
            return 0
        }
        return viewModel.numberOfItems()
    }
    
    open func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let viewModel = viewModel else {
            return UICollectionViewCell()
        }
        
        if let itemViewModel = viewModel.itemViewModel(indexPath: indexPath),
           let item = collectionView.dequeueReusableCell(withReuseIdentifier: itemViewModel.identifier, for: indexPath) as? CommonCollectionItem {

            item.viewModel = itemViewModel
            item.delegate = self
            return item
        }
        
        return UICollectionViewCell()
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    
    open func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        guard let itemViewModel = self.viewModel?.itemViewModel(indexPath: indexPath) else {
            return CGSize.zero
        }
        return CGSize(width: itemViewModel.itemWidth, height: itemViewModel.itemHeight)
    }
    
    open func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    open func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // MARK: - CommonListViewDelegate
    
    open func didSelectCell(object: Any?) {
        self.listViewDelegate?.didSelectCell(object: object)
    }
    
    // MARK: - Private
    
    private func updateView() {
//        guard let viewModel = viewModel else {
//            return
//        }
    }
    
    private func reload() {
        
        self.reloadData()
        self.backgroundColor = UIColor.clear
    }
    
    private func setup() {
        
        self.allowsSelection = false
        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        self.delegate = self
        self.dataSource = self
        self.alwaysBounceVertical = false
        self.alwaysBounceHorizontal = false
        
    }
    
    private func registerCells() {
        guard let viewModel = viewModel else {
            return
        }
        viewModel.items().forEach({ key, value in
            self.register(value, forCellWithReuseIdentifier: key)
        })
    }
}
