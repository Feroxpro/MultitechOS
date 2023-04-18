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
    weak var coordinator: MainCoordinator?
    let clientViewController = ClientsViewController()
    let ordersViewController = OrdersViewController()
    
    init (viewController: AddClientsViewController, coordinator: MainCoordinator) {
        self.viewController = viewController
        self.coordinator = coordinator
    }
    
    func showAlertConfirmDataOSClient() {
        let alertController = UIAlertController(title: "Cliente cadastrado com sucesso", message: "Somente cadastrar ou criar OS", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Voltar", style: .default) { _ in
            if let viewController = self.viewController {
                viewController.dismiss(animated: true, completion: nil)
            }
        }
        let createOSAction = UIAlertAction(title: "Criar OS", style: .default) { _ in
            if let viewController = self.viewController {
                viewController.dismiss(animated: true, completion: nil)
            }
            self.clientViewController.dismiss(animated: false)
            self.coordinator?.goToOrders()
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(createOSAction)
        
        self.viewController?.present(alertController, animated: true, completion: nil)
    }
}
