//
//  BaseCollectionViewController.swift
//  moneyManager
//
//  Created by Shupegin Sergey on 14.06.2022.
//  Copyright © 2022 ShupeginSergey. All rights reserved.
//

import UIKit

public class BaseCollectionViewController: BaseViewController, CommonListViewDelegate, BaseCollectionViewModelDelegate {
 
    // MARK: - Properties
    
    public var collectionView: CommonCollectionView?
    
    private var selfViewModel: BaseCollectionViewModel? {
        return self.viewModel as? BaseCollectionViewModel
    }
    
    // MARK: - Lifecycle
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupCollectionView()
    }
    
    // MARK: - Override
    
    open override func initView() {
        self.collectionView = CommonCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    open override func updateView() {
        super.updateView()
        self.setupCollectionViewModel()
    }
    
    // MARK: - CommonListViewDelegate
    
    public func didSelectCell(object: Any?) {
        selfViewModel?.didSelect(object: object)
    }
    
    // MARK: - NewPhotoListViewModelDelegate
    
    open func hardUpdate() {
        self.updateView()
    }
    
    // MARK: - Private
    
    private func setupCollectionView() {
        
        guard let collectionView = self.collectionView,
              #available(iOS 11.0, *) else {
            return
        }

        self.view.addSubview(collectionView)
        collectionView.listViewDelegate = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
    
    }
    
    private func setupCollectionViewModel() {
        guard let selfViewModel = selfViewModel else {
            return
        }
        self.collectionView?.viewModel = CommonCollectionViewModel(itemViewModels: selfViewModel.cellViewModels)
    }
}
