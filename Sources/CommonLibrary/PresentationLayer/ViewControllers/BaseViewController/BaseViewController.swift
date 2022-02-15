//
//  BaseViewController.swift
//  LanguageCards
//
//  Created by Shupegin Sergey on 28.10.2021.
//

import UIKit

open class BaseViewController: UIViewController, BaseViewModelDelegate {

    // MARK: - Properties

    public let services = Services.shared
    
    public var viewModel: BaseViewModel? {
        didSet {
            viewModel?.delegate = self
            viewModel?.subscribeListeners()
            
            self.updateView()
        }
    }
    
    // MARK: - Lifecycle
    
    public init() {
        super.init(nibName: nil, bundle: nil)
        self.initView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.initView()
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.subscribeKeyboardNotification()
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.viewModel?.handleViewWillAppear()
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.viewModel?.handleViewDidAppear()
    }
    
    deinit {
        self.viewModel?.removeListeners()
        self.removeKeyboardNotification()
    }
    
    // MARK: - BaseViewModelDelegate
    
    open func update() {
        self.setupView()
    }
    
    // MARK: - To Override
    
    open func initView() {
        
    }
    
    open func updateView() {
        
        self.setupTabBar()
        self.view.backgroundColor = self.viewModel?.config.backgroundColor
    }
    
    open func setupView() {
        self.setupNavigation()
    }
    
    open func keyboardWillShow(size: CGFloat) {
    }
    
    open func keyboardWillHide() {
    }
    
    open func setupNavigation() {
        self.title = self.viewModel?.navigationTitle()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: self.viewModel?.rightNavigationAcionImage,
                                                                      style: .plain,
                                                                      target: self,
                                                                      action: #selector(self.rightNavigationAction(sender:)))
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: self.viewModel?.leftNavigationAcionImage,
                                                                     style: .plain,
                                                                     target: self,
                                                                     action: #selector(self.leftNavigationAction(sender:)))
    }
    
    // MARK: - Private
    
    private func setupTabBar() {
        guard let tabBatItem = self.viewModel?.tabBarItem else {
            return
        }
        self.tabBarItem = tabBatItem
    }
    
    @objc private func rightNavigationAction(sender: UIBarButtonItem) {
        self.viewModel?.rightNavigationAction()
    }

    @objc private func leftNavigationAction(sender: UIBarButtonItem) {
        self.viewModel?.leftNavigationAction()
    }
    
    private func subscribeKeyboardNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    private func removeKeyboardNotification() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            self.keyboardWillShow(size: keyboardSize.height)
        }
    }
    
    @objc private func keyboardWillHide(notification: Notification) {
        self.keyboardWillHide()
    }
}
