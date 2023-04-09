//
//  ClientsViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class ClientsViewController: UIViewController {
    
    let clientsViewScreen = ClientsViewScreen()
    weak var coordinator: MainCoordinator?
    
    override func loadView() {
        self.view = self.clientsViewScreen
        setupBinds()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        navigationItem.title = "Clientes"
        navigationItem.rightBarButtonItem = clientsViewScreen.addButton
        clientsViewScreen.configProtocolsTableView(delegate: self, dataSource: self)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func setupBinds() {
        clientsViewScreen.addButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addButtonTapped))
    }
    
    @objc func addButtonTapped() {
        coordinator?.goToAddClients()
    }
}



extension ClientsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: clientsViewScreen.identifier, for: indexPath) as! ClientsTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
}
