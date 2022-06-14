//
//  BaseCollectionViewModel.swift
//  moneyManager
//
//  Created by Shupegin Sergey on 14.06.2022.
//  Copyright © 2022 ShupeginSergey. All rights reserved.
//

import Foundation

open class BaseCollectionViewModel: BaseViewModel, BaseCollectionViewModelProtocol {
    
    // MARK: - Properties
    
    public var baseTableViewDelegate: BaseTableViewModelDelegate? {
        return self.delegate as? BaseTableViewModelDelegate
    }
    
    // MARK: - Lifecycle
    
    public override init() {
        super.init()
        self.configureCellViewModels()
    }
    
    // MARK: - NewPhotoListViewModelProtocol

    open var cellViewModels: [CommonCollectionItemViewModel] = []
    
    open func didSelect(object: Any?) {
    }
    
    open func configureCellViewModels() {
    }
    
}
