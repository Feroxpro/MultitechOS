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
    
    lazy var titleDataLabel: UILabel = {
        let label = Titlelabel(text: "Serviços")
        return label
    }()
    
    lazy var serviceNameField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Serviço",
                                                             attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var priceServiceField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Preço",
                                                             attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var priceCoustServiceField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.attributedPlaceholder = NSAttributedString(string: " Preço de custo",
                                                             attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    lazy var descriptionField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 6
        textField.isUserInteractionEnabled = true
        textField.attributedPlaceholder = NSAttributedString(string: " Descrição",
                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
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
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
        }
        priceServiceField.snp.makeConstraints { make in
            make.top.equalTo(serviceNameField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
        }
        priceCoustServiceField.snp.makeConstraints { make in
            make.top.equalTo(priceServiceField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
        }
        descriptionField.snp.makeConstraints { make in
            make.top.equalTo(priceCoustServiceField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(40)
        }
       
        saveButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(descriptionField.snp.bottom).offset(60)
        }
        
    }
}
