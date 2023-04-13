//
//  AddClientsViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 08/04/23.
//

import UIKit

class AddClientsViewController: UIViewController, UITextFieldDelegate {
    
    weak var coordinator: MainCoordinator?
    var custumerBaseViewScreen = CustumerBaseViewScreen()
    var viewModel = RegisterViewModel()
    
    override func loadView() {
        self.view = self.custumerBaseViewScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        self.custumerBaseViewScreen.cepTextField.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        viewModel.validateCepField(textField: custumerBaseViewScreen.cepTextField, cep: custumerBaseViewScreen.cepTextField.text ?? "") { register in
            self.addData(register: register)
            print(register)
        }
    }
    
    func addData(register: Register) {
        custumerBaseViewScreen.nameStreetTextField.text = register.logradouro
        custumerBaseViewScreen.districtTextField.text = register.bairro
        custumerBaseViewScreen.cityTextField.text = register.localidade
        custumerBaseViewScreen.StateTextField.text = register.uf
    }
}
