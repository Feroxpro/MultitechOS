//
//  ClientsViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class ClientsViewController: UIViewController {
    
    let clientsViewScreen = ClientsViewScreen()
    
    override func loadView() {
        self.view = self.clientsViewScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        clientsViewScreen.configProtocolsTableView(delegate: self, dataSource: self)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
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
}
