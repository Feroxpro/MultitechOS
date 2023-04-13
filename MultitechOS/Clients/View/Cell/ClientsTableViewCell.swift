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
        label.text = "ID: 10"
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
    
    lazy var phoneNumber: UILabel = {
        let label = UILabel()
        label.text = "(11)98979-5250"
        label.textColor = .white
        return label
    }()
    
    override func addSubviews() {
        addSubview(containerView)
        containerView.addSubview(OsNumberLabel)
        containerView.addSubview(clientName)
        containerView.addSubview(cpf)
        containerView.addSubview(phoneNumber)
    }
    
    override func configureConstraints() {
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
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
        
        phoneNumber.snp.makeConstraints { make in
            make.top.equalTo(clientName.snp.bottom).offset(20)
            make.trailing.equalTo(containerView.snp.trailing).inset(10)
        }
        
    }
}
