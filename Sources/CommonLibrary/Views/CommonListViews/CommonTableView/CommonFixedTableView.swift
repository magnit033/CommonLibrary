//
//  CommonFixedTableView.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 30.12.2021.
//

import UIKit

open class CommonFixedTableView: CommonTableView {
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let viewModel = self.viewModel,
              let cellViewModel = viewModel.cellViewModel(indexPath: indexPath) else {
                  return 0
              }
        let height = cellViewModel.cellHeight
        return height
    }
}
