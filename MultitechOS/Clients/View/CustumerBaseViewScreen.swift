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
    
    lazy var titleDataLabel: UILabel = {
        let label = Titlelabel(text: "Dados Pessoais")
        return label
    }()
    
    lazy var CpfTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Insira seu CPF", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Insira seu nome completo", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var phoneTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Insira seu celular", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var titleAddresLabel: UILabel = {
        let label = Titlelabel(text: "Endereço")
        return label
    }()
    
    lazy var cepTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.isUserInteractionEnabled = true
        textField.attributedPlaceholder = NSAttributedString(string: " CEP (somente numeros)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var nameStreetTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Logradouro", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var numberStreetTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Numero", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var complementTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Complemento", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var districtTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Bairro", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var cityTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Cidade", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var StateTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " UF", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
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
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
            make.width.equalTo(360)
        }
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(CpfTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
            make.width.equalTo(360)
        }
        phoneTextField.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
            make.width.equalTo(360)
        }
        titleAddresLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneTextField.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            
        }
        cepTextField.snp.makeConstraints { make in
            make.top.equalTo(titleAddresLabel.snp.bottom).offset(30)
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
        saveButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(StateTextField.snp.bottom).offset(60)
        }
        
    }
}
