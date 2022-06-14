//
//  BaseCollectionViewModelProtocol.swift
//  moneyManager
//
//  Created by Shupegin Sergey on 14.06.2022.
//  Copyright © 2022 ShupeginSergey. All rights reserved.
//

import Foundation

public protocol BaseCollectionViewModelProtocol {
    
    var cellViewModels: [CommonCollectionItemViewModel] { get }
    
    func didSelect(object: Any?)
}
