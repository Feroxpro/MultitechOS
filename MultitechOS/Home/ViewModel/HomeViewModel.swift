//
//  HomeViewModel.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import Foundation

class HomeViewModel {
    
    weak var coordinator: MainCoordinator?

    private var selectedIndex: Int?
    
    func didSelectItem(at index: Int) {
        let numberIndex = index
        
        switch numberIndex {
        case 0:
            coordinator?.goToClients()
            return
        case 1:
            coordinator?.goToServices()
            return
        case 2:
            let ordersViewController = OrdersViewController()
            self.homeViewController?.navigationController?.pushViewController(ordersViewController, animated: true)
            return
        case 3:
            let warrantyViewController = WarrantyViewController()
            self.homeViewController?.navigationController?.pushViewController(warrantyViewController, animated: true)
            return
        case 4:
            let finishedOrdersViewController = FinishedOrdersViewController()
            self.homeViewController?.navigationController?.pushViewController(finishedOrdersViewController, animated: true)
            return
        case 5:
            let settingsViewController = SettingsViewController()
            self.homeViewController?.navigationController?.pushViewController(settingsViewController, animated: true)
            return
        default:
            return
        }
    }
}
