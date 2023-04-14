//
//  ServicesViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class ServicesViewController: UIViewController {

    let serviceViewScreen = ServicesViewScreen()
    weak var coordinator: MainCoordinator?
    
    override func loadView() {
        self.view = self.serviceViewScreen
        setupBinds()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        navigationItem.searchController = serviceViewScreen.searchClients
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.title = "Serviços"
        navigationItem.titleView?.tintColor = .white
        navigationItem.rightBarButtonItem = serviceViewScreen.addButton
        serviceViewScreen.configProtocolsTableView(delegate: self, dataSource: self)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func setupBinds() {
        serviceViewScreen.addButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addServiceButtonTapped))
    }
    
    @objc func addServiceButtonTapped() {
        coordinator?.goToAddService()
    }
}

extension ServicesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: serviceViewScreen.identifier, for: indexPath) as! ServiceTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
