//
//  RegisterViewModel.swift
//  CadastroUnico
//
//  Created by Felipe Domingos on 23/09/22.
//

import Foundation
import UIKit

class RegisterViewModel {
    
    var rest = RestManager()
    var custumerBaseViewScreen = CustumerBaseViewScreen()
    
    init(custumerBaseViewScreen: CustumerBaseViewScreen = CustumerBaseViewScreen()) {
        self.custumerBaseViewScreen = custumerBaseViewScreen
    }
    
    func validateCepField(textField: UITextField, cep: String, completion: @escaping(_ register: Register) -> Void) {
        if textField.text?.isEmpty == false && textField.endEditing(true) {
            rest.validateCep(cep: cep) { register in
                completion(register)
            }
        }
    }
}
