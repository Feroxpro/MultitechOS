//
//  OrdersSelectedViewMdel.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 17/04/23.
//

import Foundation
import UIKit


class OrdersSelectedViewModel {
    
    let viewController: OrdersViewController?
    weak var coordinator: MainCoordinator?
    
    init(viewController: OrdersViewController, coordinator: MainCoordinator) {
        self.viewController = viewController
        self.coordinator = coordinator
    }
    
    func showDeviceAlert() {
        let alertController = UIAlertController(title: "Selecione um dispositivo para iniciar a OS!", message: nil, preferredStyle: .actionSheet)
        
        let celularAction = UIAlertAction(title: "Celular", style: .default) { (action) in
            self.coordinator?.goToAddOrdersMobile()
        }
        alertController.addAction(celularAction)
        
        let notebookAction = UIAlertAction(title: "Notebook", style: .default) { (action) in
            self.coordinator?.goToAddOrdersNotebook()
        }
        alertController.addAction(notebookAction)

        let computerAction = UIAlertAction(title: "Computador", style: .default) { (action) in
            self.coordinator?.goToAddOrdersComputer()
        }
        alertController.addAction(computerAction)

        let videoGameAction = UIAlertAction(title: "Video Game", style: .default) { (action) in
            self.coordinator?.goToAddOrdersGame()
        }
        alertController.addAction(videoGameAction)

        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)

        viewController?.present(alertController, animated: true, completion: nil)
    }
}
