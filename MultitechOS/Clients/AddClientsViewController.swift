//
//  AddClientsViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 08/04/23.
//

import UIKit

class AddClientsViewController: UIViewController, UITextFieldDelegate {
    
    weak var coordinator: MainCoordinator?
    var custumerBaseViewScreen: CustumerBaseViewScreen?
    var viewModel = RegisterViewModel()
    
    override func loadView() {
        custumerBaseViewScreen = CustumerBaseViewScreen()
        view = custumerBaseViewScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        self.custumerBaseViewScreen?.cepTextField.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        viewModel.validateCepField(textField: custumerBaseViewScreen?.cepTextField ?? textField, cep: custumerBaseViewScreen?.cepTextField.text ?? "") { register in
            self.initViewModel(data: register)
        }
    }
    
    func initViewModel(data: Register) {
        if let screen = self.custumerBaseViewScreen {
            viewModel = RegisterViewModel(custumerBaseViewScreen: screen)
        }
        viewModel.addData(register: data)
    }
}
