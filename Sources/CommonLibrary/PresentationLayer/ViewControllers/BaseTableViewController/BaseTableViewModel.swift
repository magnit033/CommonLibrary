//
//  BaseTableViewModel.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 27.10.2021.
//

import Foundation

open class BaseTableViewModel: BaseViewModel, BaseTableViewModelProtocol {
    
    // MARK: - Properties
    
    public var baseTableViewDelegate: BaseTableViewModelDelegate? {
        return self.delegate as? BaseTableViewModelDelegate
    }
    
    // MARK: - Lifecycle
    
    override init() {
        super.init()
        self.configureCellViewModels()
    }
    
    // MARK: - BaseTableViewModelProtocol
    
    open var ignoreKeyboard: Bool {
        return true
    }
    
    open var bottomButtonTitle: String {
        return ""
    }
    open func bottomButtonAction() {
        
    }

    open var cellViewModels: [CommonTableCellViewModel] = []
    
    open func didSelect(object: Any?) {
    }
    
    open func configureCellViewModels() {
    }
}
