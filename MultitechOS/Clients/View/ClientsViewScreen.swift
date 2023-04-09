//
//  ClientsScreenView.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class ClientsViewScreen: BaseView {
    
    let identifier: String = "ClientsTableViewCell"
    
    
    lazy var searchClients: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        return textField
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .black
        tableView.register(ClientsTableViewCell.self, forCellReuseIdentifier: identifier)
        return tableView
    }()
    
    var addButton: UIBarButtonItem?
    
    
    
    public func configProtocolsTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    override func addSubviews() {
        addSubview(tableView)
        addSubview(searchClients)
        
    }
    
    override func configureConstraints() {
        
        searchClients.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(60)
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
    }
}
