//
//  OrdersViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class OrdersViewController: UIViewController {
    
    let ordersViewScreen = OrdersViewScreen()
    
    override func loadView() {
        self.view = self.ordersViewScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ordersViewScreen.configProtocolsTableView(delegate: self, dataSource: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
    extension OrdersViewController: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: ordersViewScreen.identifier, for: indexPath) as! OrdersTableViewCell
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 80
        }
    }


