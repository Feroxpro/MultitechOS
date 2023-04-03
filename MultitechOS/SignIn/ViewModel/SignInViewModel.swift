//
//  SignInViewModel.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 03/04/23.
//

import Foundation
import UIKit

class SignInViewModel {
    
    private let signInViewScreen: SignInViewScreen?
    private let signInViewController: SignInViewController?
    
    init (signInViewScreen: SignInViewScreen, signInViewController: SignInViewController) {
        self.signInViewScreen = signInViewScreen
        self.signInViewController = signInViewController
    }
    
    func signInAction() {
        signInViewScreen?.loginButton.addTarget(self, action: #selector(getApiPlay), for: .touchUpInside)
    }
    
    @objc private func getApiPlay() {
        if signInViewScreen?.userTextField.text == "Admin" && signInViewScreen?.passwordTextField.text == "1234" {
            let homeViewController = HomeViewController()
            self.signInViewController?.navigationController?.pushViewController(homeViewController, animated: true)
        } else {
            let alert = UIAlertController(title: "Erro de autenticação", message: "Usuário ou senha incorretos", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            signInViewController?.present(alert, animated: true, completion: nil)
        }
    }
}
