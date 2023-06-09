//
//  MainCoordinator.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 08/04/23.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator] ()
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = SignInViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToHome() {
        let viewController = HomeViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToClients() {
        let viewController = ClientsViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToAddClients() {
        let viewController = AddClientsViewController()
        viewController.coordinator = self
        self.navigationController.present(viewController, animated: true)
    }
    
    func goToServices() {
        let viewController = ServicesViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToAddService() {
        let viewController = AddServiceViewController()
        viewController.coordinator = self
        if #available(iOS 15.0, *) {
            if let sheet = viewController.sheetPresentationController {
                sheet.detents = [.medium(), .medium()]
                sheet.prefersGrabberVisible = true
                self.navigationController.present(viewController, animated: true)
            }
        }
    }
    
    func goToOrders() {
        let viewController = OrdersViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToAddOrdersMobile() {
        let viewController = AddOrderMobileViewController()
        viewController.coordinator = self
        self.navigationController.present(viewController, animated: true)
    }
    
    func goToAddOrdersComputer() {
        let viewController = AddOrderComputerViewController()
        viewController.coordinator = self
        self.navigationController.present(viewController, animated: true)
    }
    
    func goToAddOrdersGame() {
        let viewController = AddOrderGameViewController()
        viewController.coordinator = self
        self.navigationController.present(viewController, animated: true)
    }
    
    func goToAddOrdersNotebook() {
        let viewController = AddOrderNotebookViewController()
        viewController.coordinator = self
        self.navigationController.present(viewController, animated: true)
    }
    
    func goToWarranty() {
        let viewController = WarrantyViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToFinished() {
        let viewController = FinishedOrdersViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToSettings() {
        let viewController = SettingsViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
