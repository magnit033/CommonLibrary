//
//  FloatTextField.swift
//  Kalibri
//
//  Created by Shupegin Sergey on 01/05/2019.
//  Copyright © 2019 Shupegin Sergey. All rights reserved.
//

import UIKit

public class CommonTextView: UIView, CommonTextViewProtocol, UITextFieldDelegate {

    // MARK: - Properties

    private let kCommonFont = UIFont.systemFont(ofSize: 17)
    private let kDarkTextColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    private let kLightTextColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    
    private let textField: CommonTextField = CommonTextField()
    private let placeHolderLabel: UILabel = UILabel()
    private let topPlaceHolderLabel: UILabel = UILabel()
    
    private var firstResponder: Bool {
        return textField.isFirstResponder
    }
    
    private var textIsEmpty: Bool {
        return self.text == ""
    }
    
    // MARK: - Lifecycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
    }
    
    // MARK: - FloatTextFieldProtocol
    
    public var viewModel: CommonTextViewModel? {
        didSet {
            guard let viewModel = viewModel else {
                return
            }
            self.textField.text = viewModel.text
            self.textField.keyboardType = viewModel.keyboardType
            self.textField.autocapitalizationType = viewModel.autocapitalizationType
            self.textField.returnKeyType = viewModel.returnKeyType
            self.textField.autocorrectionType = viewModel.autocorrectionType
            self.textField.languageCode = viewModel.languageCode
            
            self.placeHolderLabel.text = viewModel.placeHolder
            self.topPlaceHolderLabel.text = viewModel.placeHolder
            
            self.setRelevantState(animated: false)
        }
    }
    
    public weak var delegate: CommonTextViewDelegate?
    
    public var text: String {
        return self.textField.text ?? ""
    }
    
    public func open() {
        self.textField.becomeFirstResponder()
    }
    
    public func close() {
        self.textField.resignFirstResponder()
        self.setRelevantState(animated: true)
    }
    
    public func setRelevantState() {
        self.setRelevantState(animated: true)
    }
    
    public func setWarning() {
        self.topPlaceHolderLabel.textColor = UIColor.red
    }
    
    // MARK: - UITextFieldDelegate
    
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        self.setRelevantState(animated: true)
        self.delegate?.textFiledShouldBecameFirstResponder(commonTextField: self)
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        setRelevantState(animated: true)
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.setRelevantState(animated: true)
        self.delegate?.textFieldShouldReturn(commonTextField: self)
        return true
    }
    
    @available(iOS 10.0, *)
    public func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        self.removeWarning()
        self.delegate?.textFieldDidChanged(commonTextField: self)
    }
    
    // MARK: - Private
    
    @objc private func textFieldDidChange(_ textField: UITextField) {
        self.removeWarning()
        self.delegate?.textFieldDidChanged(commonTextField: self)
    }
    
    private func removeWarning() {
        self.topPlaceHolderLabel.textColor = kLightTextColor
    }
    
    private func setRelevantState(animated: Bool) {
        self.removeWarning()
        if self.firstResponder || self.text != "" {
            self.setOnPositionPlaceHolder(animated: animated)
        }  else {
            self.setOffPositionPlaceHolder(animated: animated)
        }
    }
    
    private func setupView() {
        self.setup()
        self.setRelevantState(animated: false)
    }
    
    private func setup() {
        
        self.backgroundColor = UIColor.clear
        
        self.addSubview(textField)
        self.textField.delegate = self
        self.textField.font = kCommonFont
        self.textField.textColor = kDarkTextColor
        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
        self.textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
        self.textField.translatesAutoresizingMaskIntoConstraints = false
        self.textField.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.66).isActive = true
        self.textField.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.textField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.textField.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
        self.addSubview(self.placeHolderLabel)
        self.placeHolderLabel.textColor = kLightTextColor
        self.placeHolderLabel.font = kCommonFont
        
        self.placeHolderLabel.translatesAutoresizingMaskIntoConstraints = false
        self.placeHolderLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.placeHolderLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.placeHolderLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6).isActive = true
        self.placeHolderLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.66).isActive = true
        
        self.addSubview(self.topPlaceHolderLabel)
        self.topPlaceHolderLabel.textColor = kLightTextColor
        self.topPlaceHolderLabel.font = kCommonFont.withSize(14)
        
        self.topPlaceHolderLabel.translatesAutoresizingMaskIntoConstraints = false
        self.topPlaceHolderLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6).isActive = true
        self.topPlaceHolderLabel.bottomAnchor.constraint(equalTo: self.textField.topAnchor, constant: 0).isActive = true
    }
    
    private func setOnPositionPlaceHolder(animated: Bool) {
        
        if animated {
            UIView.animate(withDuration: 0.3) { [weak self] in
                guard let strongSelf = self else {
                    return
                }
                strongSelf.topPlaceHolderLabel.alpha = 1
                strongSelf.placeHolderLabel.alpha = 0
            }
        } else {
            topPlaceHolderLabel.alpha = 1
            placeHolderLabel.alpha = 0
        }
    }
    
    private func setOffPositionPlaceHolder(animated: Bool) {
        
        if animated {
            UIView.animate(withDuration: 0.3) { [weak self] in
                guard let strongSelf = self else {
                    return
                }
                strongSelf.topPlaceHolderLabel.alpha = 0
                strongSelf.placeHolderLabel.alpha = 1
            }
        } else {
            topPlaceHolderLabel.alpha = 0
            placeHolderLabel.alpha = 1
        }
    }
}
