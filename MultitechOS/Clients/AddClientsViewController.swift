//
//  AddClientsViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 08/04/23.
//

import UIKit

class AddClientsViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    var screen: CustumerBaseViewScreen?
    var viewModel = RegisterViewModel()
    
    override func loadView() {
        screen = CustumerBaseViewScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        self.screen?.cepTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension AddClientsViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let cepText = screen?.cepTextField.text {
            if let cepTextField = screen?.cepTextField{
                viewModel.validateCepField(textField: cepTextField, cep: cepText) { register in
                    self.initViewModel(data: register)
                }
            }
        }
    }
    
    func initViewModel(data: Register) {
        if let screen = self.screen {
            viewModel = RegisterViewModel(custumerBaseViewScreen: screen)
        }
        viewModel.addData(register: data)
    }
    
}
