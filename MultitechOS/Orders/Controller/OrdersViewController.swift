//
//  OrdersViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import UIKit

class OrdersViewController: UIViewController {
    
    private let screen = OrdersViewScreen()
    weak var coordinator: MainCoordinator?
    var viewModel: OrdersSelectedViewModel?
    
    
    override func loadView() {
        self.view = self.screen
        setupBinds()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        navigationItem.searchController = screen.searchOrders
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.title = "Ordem de serviços"
        navigationItem.rightBarButtonItem = screen.addButton
        screen.configProtocolsTableView(delegate: self, dataSource: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func setupBinds() {
        screen.addButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addButtonTapped))
    }
    
    @objc func addButtonTapped() {
        initViewModel()
    }
    
    func initViewModel() {
        if let coordinator = coordinator {
            viewModel = OrdersSelectedViewModel(viewController: self, coordinator: coordinator)
        }
        viewModel?.showDeviceAlert()
    }
}



extension OrdersViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: screen.identifier, for: indexPath) as! ClientsTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

extension OrdersViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
    }
}
