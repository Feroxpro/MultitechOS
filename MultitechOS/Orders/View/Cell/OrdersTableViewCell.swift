//
//  OrdersTableViewCell.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class OrdersTableViewCell: BaseTableViewCell {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    lazy var OsNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "OS: 1000"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()
    
    lazy var clientName: UILabel = {
        let label = UILabel()
        label.text = "Felipe Henrique Domingos"
        label.textColor = .white
        return label
    }()
    
    lazy var cpf: UILabel = {
        let label = UILabel()
        label.text = "378.057.578-79"
        label.textColor = .white
        return label
    }()
    
    lazy var entryData: UILabel = {
        let label = UILabel()
        label.text = "06/04/2023"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var deviceImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(systemName: "iphone")
        img.tintColor = .white
        return img
    }()
    
    
    override func addSubviews() {
        addSubview(containerView)
        containerView.addSubview(OsNumberLabel)
        containerView.addSubview(clientName)
        containerView.addSubview(cpf)
        containerView.addSubview(entryData)
        containerView.addSubview(deviceImage)
    }
    
    override func configureConstraints() {
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(80)
        }
        
        OsNumberLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(containerView.snp.leading).offset(20)
        }
        
        clientName.snp.makeConstraints { make in
            make.top.equalTo(containerView.snp.top).offset(10)
            make.leading.equalTo(OsNumberLabel.snp.trailing).offset(15)
        }
        
        cpf.snp.makeConstraints { make in
            make.top.equalTo(clientName.snp.bottom).offset(20)
            make.leading.equalTo(OsNumberLabel.snp.trailing).offset(15)
        }
        
        entryData.snp.makeConstraints { make in
            make.top.equalTo(containerView.snp.top).offset(10)
            make.trailing.equalTo(containerView.snp.trailing).inset(10)
        }
        deviceImage.snp.makeConstraints { make in
            make.bottom.equalTo(containerView.snp.bottom).inset(15)
            make.centerX.equalTo(entryData.snp.centerX)
            make.width.equalTo(25)
            make.height.equalTo(30)
        }
        
    }
}

