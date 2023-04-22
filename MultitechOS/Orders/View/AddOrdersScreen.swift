//
//  AddOrdersScreen.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 21/04/23.
//

import UIKit
import SnapKit

class AddOrdersScreen: BaseView  {
    
    lazy var selfClientToOrder: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Filtre pelo nome, id ou CPF do cliente")
        return textField
    }()
    
    lazy var initialStatus: CustomButton = {
        let button = CustomButton(menuOptions: ["Opção 1", "Opção 2", "Opção 3"])
        return button
    }()
    
    override func addSubviews() {
        addSubview(selfClientToOrder)
        addSubview(initialStatus)
    }
    
    override func configureConstraints() {
        selfClientToOrder.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).offset(20).inset(20)
        }
        initialStatus.snp.makeConstraints { make in
            make.top.equalTo(selfClientToOrder.snp.bottom).offset(25)
            make.centerX.equalToSuperview()
        }
    }
}
