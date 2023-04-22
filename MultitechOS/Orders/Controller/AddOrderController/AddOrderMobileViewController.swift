//
//  AddOrdersViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 14/04/23.
//

import UIKit

class AddOrderMobileViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    private let screen = AddOrdersScreen()
    
    
    override func loadView() {
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
