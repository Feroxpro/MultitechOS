//
//  MainCoordinator.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 08/04/23.
//

import UIKit

protocol Coordinator {
    func start()
}

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let signViewcontroller = SignInViewController()
        navigationController.pushViewController(signViewcontroller, animated: true)
    }
    
    func goToHome() {
        let homeViewController = HomeViewController()
        navigationController.pushViewController(homeViewController, animated: true)
    }
    
    func goToClients() {
        let clientsViewController = ClientsViewController()
        self.navigationController.pushViewController(clientsViewController, animated: true)
    }
    
    func goToAddClients() {
        let addclientsViewController = AddClientsViewController()
        addclientsViewController.coordinator = self
        self.navigationController.present(addclientsViewController, animated: true)
    }
    
    func goToServices() {
        let serviceViewController = ServicesViewController()
        self.navigationController.pushViewController(serviceViewController, animated: true)
    }
    
    func goToOrders() {
        let ordersViewController = OrdersViewController()
        self.navigationController.pushViewController(ordersViewController, animated: true)
    }
    
    func goToWarranty() {
        let warrantyViewController = WarrantyViewController()
        self.navigationController.pushViewController(warrantyViewController, animated: true)
    }
    
    func goToFinished() {
        let finishedOrdersViewController = FinishedOrdersViewController()
        self.navigationController.pushViewController(finishedOrdersViewController, animated: true)
    }
    
    func goToSettings() {
        let settingsViewController = SettingsViewController()
        self.navigationController.pushViewController(settingsViewController, animated: true)
    }
}
