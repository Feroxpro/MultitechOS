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
    
    var register: Register?  {
        didSet {
            nameStreetTextField.text = register?.logradouro
            districtTextField.text = register?.bairro
            cityTextField.text = register?.localidade
            StateTextField.text = register?.uf
        }
    }
    
    lazy var titleDataLabel: UILabel = {
        let label = Titlelabel(text: "Dados Pessoais")
        return label
    }()
    
    lazy var CpfTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Insira seu CPF")
        return textField
    }()
    
    lazy var nameTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Insira seu nome completo")
        return textField
    }()
    
    lazy var phoneTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Insira seu celular")
        return textField
    }()
    
    lazy var titleAddresLabel: UILabel = {
        let label = Titlelabel(text: "Endereço")
        return label
    }()
    
    lazy var cepTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " CEP (somente numeros)")
        return textField
    }()
    
    lazy var nameStreetTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Logradouro")
        return textField
    }()
    
    lazy var numberStreetTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Numero")
        return textField
    }()
    
    lazy var complementTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Complemento")
        return textField
    }()
    
    lazy var districtTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Bairro")
        return textField
    }()
    
    lazy var cityTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Cidade")
        return textField
    }()
    
    lazy var StateTextField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " UF")
        return textField
    }()
    
    lazy var saveButton: UIButton = {
        let button = DefaultButton(title: "Cadastrar")
        return button
    }()
    
    override func addSubviews() {
        addSubview(titleDataLabel)
        addSubview(CpfTextField)
        addSubview(nameTextField)
        addSubview(phoneTextField)
        addSubview(titleAddresLabel)
        addSubview(cepTextField)
        addSubview(nameStreetTextField)
        addSubview(numberStreetTextField)
        addSubview(complementTextField)
        addSubview(districtTextField)
        addSubview(cityTextField)
        addSubview(StateTextField)
        addSubview(saveButton)
    }
    
    override func configureConstraints() {
        titleDataLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(30)
            make.centerX.equalToSuperview()
        }
        
        CpfTextField.snp.makeConstraints { make in
            make.top.equalTo(titleDataLabel.snp.top).offset(60)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)
        }
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(CpfTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)
        }
        phoneTextField.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)
        }
        titleAddresLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneTextField.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            
        }
        cepTextField.snp.makeConstraints { make in
            make.top.equalTo(titleAddresLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().dividedBy(3)
        }
        nameStreetTextField.snp.makeConstraints { make in
            make.top.equalTo(cepTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)
        }
        numberStreetTextField.snp.makeConstraints { make in
            make.top.equalTo(nameStreetTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(260)
        }
        complementTextField.snp.makeConstraints { make in
            make.top.equalTo(nameStreetTextField.snp.bottom).offset(20)
            make.leading.equalTo(numberStreetTextField.snp.trailing).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)
        }
        districtTextField.snp.makeConstraints { make in
            make.top.equalTo(numberStreetTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)
        }
        cityTextField.snp.makeConstraints { make in
            make.top.equalTo(districtTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(70)
        }
        StateTextField.snp.makeConstraints { make in
            make.top.equalTo(districtTextField.snp.bottom).offset(20)
            make.leading.equalTo(cityTextField.snp.trailing).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)

        }
        saveButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(StateTextField.snp.bottom).offset(60)
        }
        
    }
}
