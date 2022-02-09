//
//  BaseTableViewController.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 27.10.2021.
//

import UIKit

open class BaseTableViewController: BaseViewController, BaseTableViewModelDelegate, CommonListViewDelegate {

    // MARK: - Properties
    
    public var tableView: CommonTableView?
    
    private let bottomButton = CommonButton()
    
    private var selfViewModel: BaseTableViewModel? {
        return self.viewModel as? BaseTableViewModel
    }
    
    private var bottomButtonConstraint: NSLayoutConstraint?
    public var topTableViewConstraint: NSLayoutConstraint?
    
    // MARK: - Lifecycle
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTableView()
    }
    
    // MARK: - BaseTableViewModelDelegate
    
    open func hardUpdate() {
        self.updateView()
    }
    
    // MARK: - CommonTableViewDelegate
    
    open func didSelectCell(object: Any?) {
        self.selfViewModel?.didSelect(object: object)
    }
    
    // MARK: - Override
    
    open override func initView() {
        self.tableView = CommonTableView()
    }
    
    open override func updateView() {
        super.updateView()
        self.setupTableViewModel()
    }
    
    open override func setupView() {
        super.setupView()
        
        guard let selfViewModel = selfViewModel else {
            return
        }
        self.bottomButton.viewModel = CommonButtonViewModel(title: selfViewModel.bottomButtonTitle, titleColor: UIColor.systemBlue, config: selfViewModel.config)
    }
    
    open override func keyboardWillShow(size: CGFloat) {
        super.keyboardWillShow(size: size)
        
        guard let selfViewModel = selfViewModel,
              !selfViewModel.ignoreKeyboard else {
                  return
              }

        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let strongSelf = self,
                  #available(iOS 11.0, *) else {
                      return
                  }
            strongSelf.bottomButtonConstraint?.constant = -(size - strongSelf.view.safeAreaInsets.bottom)
            strongSelf.view.layoutIfNeeded()
        }
    }
    
    open override func keyboardWillHide() {
        super.keyboardWillHide()
        
        guard let selfViewModel = selfViewModel,
              !selfViewModel.ignoreKeyboard else {
                  return
              }
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let strongSelf = self else {
                return
            }
            strongSelf.bottomButtonConstraint?.constant = 0
            strongSelf.view.layoutIfNeeded()
        }
    }
    
    // MARK: - Private
    
    private func setupTableView() {
        
        guard let selfViewModel = selfViewModel,
              let tableView = self.tableView,
              #available(iOS 11.0, *) else {
                  return
              }
        
        self.view.addSubview(self.bottomButton)
        self.bottomButton.addTarget(self, action: #selector(bottomButtonAction(_:)), for: .touchUpInside)
        self.bottomButton.translatesAutoresizingMaskIntoConstraints = false
        self.bottomButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        self.bottomButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        self.bottomButtonConstraint = self.bottomButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        self.bottomButtonConstraint?.isActive = true
        self.bottomButton.heightAnchor.constraint(equalToConstant: selfViewModel.bottomButtonTitle != "" ? 60 : 0).isActive = true
        
        self.view.addSubview(tableView)
        tableView.listViewDelegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        self.topTableViewConstraint = tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0)
        self.topTableViewConstraint?.isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomButton.topAnchor).isActive = true
    }
    
    private func setupTableViewModel() {
        guard let selfViewModel = selfViewModel else {
            return
        }
        self.tableView?.viewModel = CommonTableViewModel(cellViewModels: selfViewModel.cellViewModels)
    }
    
    @objc private func bottomButtonAction(_ sender: Any?) {
        self.selfViewModel?.bottomButtonAction()
    }
}
