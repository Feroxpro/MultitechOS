//
//  CustomerBase.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 12/04/23.
//

import Foundation
import UIKit
import SnapKit

class CustumerBaseViewScreen: BaseView {
    
    lazy var CpfTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " Insira seu CPF"
        return textField
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " Insira seu nome completo"
        return textField
    }()
    
    lazy var phoneTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " Insira seu celular"
        return textField
    }()
    
    lazy var cepTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.isUserInteractionEnabled = true
        textField.placeholder = " CEP (somente numeros)"
        return textField
    }()
    
    lazy var nameStreetTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " Logradouro"
        return textField
    }()
    
    lazy var numberStreetTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " Numero"
        return textField
    }()
    
    lazy var complementTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " Complemento"
        return textField
    }()
    
    lazy var districtTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " Bairro"
        return textField
    }()
    
    lazy var cityTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " Cidade"
        return textField
    }()
    
    lazy var StateTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " UF"
        return textField
    }()
    
    
    override func addSubviews() {
        addSubview(CpfTextField)
        addSubview(nameTextField)
        addSubview(phoneTextField)
        addSubview(cepTextField)
        addSubview(nameStreetTextField)
        addSubview(numberStreetTextField)
        addSubview(complementTextField)
        addSubview(districtTextField)
        addSubview(cityTextField)
        addSubview(StateTextField)
    }
    
    
    override func configureConstraints() {
        CpfTextField.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(60)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(360)
        }
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(CpfTextField.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(360)
        }
        phoneTextField.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(360)
        }
        cepTextField.snp.makeConstraints { make in
            make.top.equalTo(phoneTextField.snp.bottom).offset(100)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(100)
        }
        nameStreetTextField.snp.makeConstraints { make in
            make.top.equalTo(cepTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
        }
        numberStreetTextField.snp.makeConstraints { make in
            make.top.equalTo(nameStreetTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(260)
            make.height.equalTo(40)
        }
        complementTextField.snp.makeConstraints { make in
            make.top.equalTo(nameStreetTextField.snp.bottom).offset(20)
            make.leading.equalTo(numberStreetTextField.snp.trailing).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
        }
        districtTextField.snp.makeConstraints { make in
            make.top.equalTo(numberStreetTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
        }
        cityTextField.snp.makeConstraints { make in
            make.top.equalTo(districtTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(70)
            make.height.equalTo(40)
        }
        StateTextField.snp.makeConstraints { make in
            make.top.equalTo(districtTextField.snp.bottom).offset(20)
            make.leading.equalTo(cityTextField.snp.trailing).offset(10)
            make.height.equalTo(40)
            make.width.equalTo(60)
        }
    }
    
    
}
