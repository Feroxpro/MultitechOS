//
//  ClientsTableViewCell.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class ServiceTableViewCell: BaseTableViewCell {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    lazy var idNumberClient: UILabel = {
        let label = UILabel()
        label.text = "ID: 230"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()
    
    lazy var serviceName: UILabel = {
        let label = UILabel()
        label.text = "Troca frontal Iphone X"
        label.textColor = .white
        return label
    }()
    
    lazy var cpf: UILabel = {
        let label = UILabel()
        label.text = "378.057.578-79"
        label.textColor = .white
        return label
    }()
    
    lazy var valueService: UILabel = {
        let label = UILabel()
        label.text = "R$ 320,00"
        label.textColor = .white
        return label
    }()
    
    override func addSubviews() {
        addSubview(containerView)
        containerView.addSubview(idNumberClient)
        containerView.addSubview(serviceName)
        containerView.addSubview(cpf)
        containerView.addSubview(valueService)
    }
    
    override func configureConstraints() {
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        idNumberClient.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(containerView.snp.leading).offset(20)
        }
        
        serviceName.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(idNumberClient.snp.trailing).offset(15)
        }
        
        valueService.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalTo(containerView.snp.trailing).inset(10)
        }
        
    }
}
