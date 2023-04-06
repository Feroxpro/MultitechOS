//
//  HomeViewModel.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import Foundation

class HomeViewModel {
    
    private let homeViewController: HomeViewController?
    
    init (homeViewController: HomeViewController) {
        self.homeViewController = homeViewController
    }

    private var selectedIndex: Int?
    
    func didSelectItem(at index: Int) {
        let numberIndex = index
        
        switch numberIndex {
        case 0:
            let clientsViewController = ClientsViewController()
            self.homeViewController?.navigationController?.pushViewController(clientsViewController, animated: true)
            return
        case 1:
            let serviceViewController = ServicesViewController()
            self.homeViewController?.navigationController?.pushViewController(serviceViewController, animated: true)
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
