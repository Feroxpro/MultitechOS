//
//  ClientsScreenView.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class ClientsViewScreen: BaseView {
    
    let identifier: String = "ClientsTableViewCell"
    
    lazy var searchClients: UISearchController = {
        let search = UISearchController()
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Buscar"
        search.definesPresentationContext = true
        return search
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
        
    }
    
    override func configureConstraints() {
        
        
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(50)
            make.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing)
            make.leading.equalTo(self.safeAreaLayoutGuide.snp.leading)
            make.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
        }
    }
}
