//
//  AddClientViewModel.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 17/04/23.
//

import Foundation
import UIKit


class AddClientViewModel {
    
    let viewController: AddClientsViewController?
    let screen: CustumerBaseViewScreen?
    weak var coordinator: MainCoordinator?
    let clientViewController = ClientsViewController()
    let ordersViewController = OrdersViewController()
    
    init (screen: CustumerBaseViewScreen, viewController: AddClientsViewController, coordinator: MainCoordinator) {
        self.screen = screen
        self.viewController = viewController
        self.coordinator = coordinator
    }
    
    func startAlert() {
        screen?.saveButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
    }
    
    @objc func addButtonTapped() {
        showAlertConfirmDataOSClient()
    }
    
    func showAlertConfirmDataOSClient() {
        let alertController = UIAlertController(title: "Cliente cadastrado com sucesso", message: "Somente cadastrar ou criar OS com os dados", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Sair", style: .cancel) { _ in
            if let viewController = self.viewController {
                viewController.dismiss(animated: true, completion: nil)
            }
        }
        let createOSAction = UIAlertAction(title: "Criar OS", style: .default) { _ in
            if let viewController = self.viewController {
                viewController.dismiss(animated: true, completion: nil)
            }
            self.clientViewController.dismiss(animated: false)
            self.ordersViewController.setupBinds()
            self.coordinator?.goToAddOrders()
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(createOSAction)
        
        self.viewController?.present(alertController, animated: true, completion: nil)
    }
}