//
//  ClientsTableViewCell.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class ClientsTableViewCell: BaseTableViewCell {
    
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
    
    lazy var entryDate: UILabel = {
        let label = UILabel()
        label.text = "06/05/2023"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .white
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
        containerView.addSubview(entryDate)
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
        
        entryDate.snp.makeConstraints { make in
            make.top.equalTo(containerView.snp.top).offset(10)
            make.trailing.equalTo(containerView.snp.trailing).inset(10)
        }
        
        deviceImage.snp.makeConstraints { make in
            make.top.equalTo(clientName.snp.bottom).offset(20)
            make.centerX.equalTo(entryDate.snp.centerX)
            make.bottom.equalTo(containerView.snp.bottom).inset(10)
            make.height.equalTo(25)
            make.width.equalTo(20)
        }
    }
}
