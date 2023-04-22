//
//  AddServiceViewScreen.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 17/04/23.
//
import Foundation
import UIKit
import SnapKit

class AddServiceViewScreeen: BaseView {
    
    lazy var titleDataLabel: Titlelabel = {
        let label = Titlelabel(text: "Serviços")
        return label
    }()
    
    lazy var serviceNameField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Serviço")
        return textField
    }()
    
    lazy var priceServiceField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Preço")
        return textField
    }()
    
    lazy var priceCoustServiceField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Preço de custo")
        return textField
    }()
    
    lazy var descriptionField: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Descrição")
        return textField
    }()
    
    lazy var saveButton: UIButton = {
        let button = DefaultButton(title: "Cadastrar")
        return button
    }()
    
    override func addSubviews() {
        addSubview(titleDataLabel)
        addSubview(serviceNameField)
        addSubview(priceServiceField)
        addSubview(priceCoustServiceField)
        addSubview(descriptionField)
        addSubview(saveButton)
    }
    
    override func configureConstraints() {
        titleDataLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(30)
            make.centerX.equalToSuperview()
        }
        
        serviceNameField.snp.makeConstraints { make in
            make.top.equalTo(titleDataLabel.snp.top).offset(60)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)
        }
        priceServiceField.snp.makeConstraints { make in
            make.top.equalTo(serviceNameField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.width.equalToSuperview().dividedBy(2.2)
        }
        priceCoustServiceField.snp.makeConstraints { make in
            make.top.equalTo(serviceNameField.snp.bottom).offset(20)
            make.leading.equalTo(priceServiceField.snp.trailing).offset(5)
            make.width.equalToSuperview().dividedBy(2.2)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)
        }
        descriptionField.snp.makeConstraints { make in
            make.top.equalTo(priceCoustServiceField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).inset(10)
        }
       
        saveButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(descriptionField.snp.bottom).offset(60)
        }
        
    }
}


