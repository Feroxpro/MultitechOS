//
//  ClientsScreenView.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class ServicesViewScreen: BaseView {

    let identifier: String = "ServiceTableViewCell"
    
    lazy var searchClients: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        return textField
    }()
    
    lazy var logoImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo01")
        return img
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .black
        tableView.register(ServiceTableViewCell.self, forCellReuseIdentifier: identifier)
        return tableView
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("+ Cadastrar serviço", for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    public func configProtocolsTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    override func addSubviews() {
        addSubview(logoImage)
        addSubview(tableView)
        addSubview(searchClients)
        addSubview(loginButton)
    }
    
    override func configureConstraints() {
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(80)
            make.width.equalTo(120)
            make.height.equalTo(60)
        }
        searchClients.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(320)
            make.height.equalTo(40)
        }
        
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(searchClients.snp.bottom).offset(30)
            make.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing)
            make.leading.equalTo(self.safeAreaLayoutGuide.snp.leading)
            make.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImage.snp.bottom).offset(30)
            make.width.equalTo(280)
        }
    }
}
