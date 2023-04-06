//
//  ServicesViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class ServicesViewController: UIViewController {

    let serviceViewScreen = ServicesViewScreen()
    
    override func loadView() {
        self.view = self.serviceViewScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        serviceViewScreen.configProtocolsTableView(delegate: self, dataSource: self)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
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
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
}
