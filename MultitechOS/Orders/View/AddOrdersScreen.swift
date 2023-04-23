//
//  AddOrdersScreen.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 21/04/23.
//

import UIKit
import SnapKit
import AVFoundation

class AddOrdersScreen: BaseView  {
    
    lazy var selfClientToOrder: DefaultTextField = {
        let textField = DefaultTextField(placeholder: " Filtre pelo nome, id ou CPF do cliente")
        return textField
    }()
    
    lazy var initialStatus: CustomButton = {
        let button = CustomButton(menuOptions: ["Opção 1", "Opção 2", "Opção 3"], primaryTitle: "Status da O.S!")
        return button
    }()
    
    lazy var date: DefaultTextField = {
        let text = DefaultTextField(placeholder: "")
        let formatter = DateFormatter()
        text.textAlignment = .center
        formatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        let dateString = formatter.string(from: Date())
        text.text = dateString
        return text
    }()
    
    lazy var expectedData: DateTimePickerTextField = {
        let text = DateTimePickerTextField()
        return text
    }()
    
    lazy var brand: CustomButton = {
        let button = CustomButton(menuOptions: ["Samsung", "Apple,", "Xioami", "Motorola", "LG", "Asus"], primaryTitle: "Marca")
        return button
    }()
    
    lazy var model: CustomButton = {
        let button = CustomButton(menuOptions: ["Samsung", "Apple", "Xioami", "Motorola", "LG", "Asus"], primaryTitle: "Modelo")
        return button
    }()
    
    lazy var frontSmartphoneImage: ImageSmartphoneWithCamera = {
        let camera = ImageSmartphoneWithCamera()
        return camera
    }()
    
    
    
    override func addSubviews() {
        addSubview(selfClientToOrder)
        //        addSubview(initialStatus)
        addSubview(date)
        addSubview(expectedData)
        addSubview(brand)
        addSubview(model)
        addSubview(frontSmartphoneImage)
    }
    
    override func configureConstraints() {
        selfClientToOrder.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).offset(20).inset(20)
        }
        //        initialStatus.snp.makeConstraints { make in
        //            make.top.equalTo(selfClientToOrder.snp.bottom).offset(25)
        //            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(20)
        //            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).dividedBy(2)
        //        }
        date.snp.makeConstraints { make in
            make.top.equalTo(selfClientToOrder.snp.bottom).offset(25)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).dividedBy(2)
        }
        expectedData.snp.makeConstraints { make in
            make.top.equalTo(selfClientToOrder.snp.bottom).offset(25)
            make.leading.equalTo(date.snp.trailing).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
        }
        brand.snp.makeConstraints { make in
            make.top.equalTo(date.snp.bottom).offset(25)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).dividedBy(2)
        }
        model.snp.makeConstraints { make in
            make.top.equalTo(date.snp.bottom).offset(25)
            make.leading.equalTo(date.snp.trailing).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
        }
        frontSmartphoneImage.snp.makeConstraints { make in
            make.top.equalTo(model.snp.bottom).offset(25)
            make.centerX.equalToSuperview()
        }
    }
}
