//
//  HomeViewScreen.swift
//  MoviesDB
//
//  Created by Felipe Domingos on 03/02/23.
//

import UIKit
import SnapKit

protocol SignInViewScreenProtocol: AnyObject {
    func actionLoginButton()
}

class SignInViewScreen: BaseView {
    
    weak var delegate:SignInViewScreenProtocol?
    func delegate(delegate:SignInViewScreenProtocol?){
        self.delegate = delegate
    }
    
    lazy var logoImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo02")
        return img
    }()
    
    lazy var BackGroundView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        return view
    }()
    
    lazy var signInView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.35)
        //        view.layer.cornerRadius = 6
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 8, height: 8)
        view.layer.shadowOpacity = 5
        view.layer.shadowRadius = 5
        return view
    }()
    
    lazy var userTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 280, height: 30))
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .natural
        textField.placeholder = "Usuário"
        let placeholderColor = UIColor.white.withAlphaComponent(0.7)
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : placeholderColor])
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textField.layer.addSublayer(bottomLine)
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 280, height: 30))
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .natural
        textField.placeholder = "Senha"
        let placeholderColor = UIColor.white.withAlphaComponent(0.7)
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : placeholderColor])
        textField.isSecureTextEntry = true
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textField.layer.addSublayer(bottomLine)
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(self.tappedLoginbtn), for: .touchUpInside)
        return button
    }()
    
    @objc public func tappedLoginbtn() {
        self.delegate?.actionLoginButton()
    }
    
    override func addSubviews() {
        addSubview(BackGroundView)
        addSubview(signInView)
        signInView.addSubview(logoImage)
        signInView.addSubview(userTextField)
        signInView.addSubview(passwordTextField)
        signInView.addSubview(loginButton)

    }
    
    override func configureConstraints() {
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInView.snp.top).offset(10)
            make.width.equalTo(300)
            make.height.equalTo(130)
        }
        BackGroundView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        signInView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(450)
            make.width.equalTo(370)
        }
        userTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImage.snp.bottom).offset(50)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userTextField.snp.bottom).offset(30)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordTextField.snp.bottom).offset(60)
            make.width.equalTo(280)
        }
    }
}
