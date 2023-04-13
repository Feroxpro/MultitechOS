//
//  HomeViewScreen.swift
//  MoviesDB
//
//  Created by Felipe Domingos on 03/02/23.
//

import UIKit
import SnapKit


class SignInViewScreen: BaseView {
    
    
    lazy var logoImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo01")
        return img
    }()
    
    lazy var userTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.placeholder = " Usuário"
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.placeholder = " Senha"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func addSubviews() {
        addSubview(logoImage)
        addSubview(userTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)

    }
    
    override func configureConstraints() {
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(10)
            make.width.equalTo(300)
            make.height.equalTo(130)
        }
        userTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImage.snp.bottom).offset(100)
            make.height.equalTo(40)
            make.width.equalTo(360)
        }
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userTextField.snp.bottom).offset(30)
            make.height.equalTo(40)
            make.width.equalTo(360)
        }
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordTextField.snp.bottom).offset(60)
            make.width.equalTo(360)
        }
    }
}
