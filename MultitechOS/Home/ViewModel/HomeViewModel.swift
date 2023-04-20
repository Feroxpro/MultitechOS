//
//  HomeViewModel.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 06/04/23.
//

import Foundation

class HomeViewModel {
    
    var homeViewController: HomeViewController

    weak var coodinator: MainCoordinator?
    
    init(homeViewController: HomeViewController, coordinator: MainCoordinator) {
        self.homeViewController = homeViewController
        self.coodinator = coordinator
    }

    private var selectedIndex: Int?
    
    func didSelectItem(at index: Int) {
        let numberIndex = index
        
        switch numberIndex {
        case 0:
            self.coodinator?.goToClients()
            return
        case 1:
            self.coodinator?.goToServices()
            return
        case 2:
            self.coodinator?.goToOrders()
            return
        case 3:
            self.coodinator?.goToWarranty()
            return
        case 4:
            self.coodinator?.goToFinished()
            return
        case 5:
            self.coodinator?.goToSettings()
            return
        default:
            return
        }
    }
}
