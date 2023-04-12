//
//  ViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 02/04/23.
//

import UIKit

class SignInViewController: UIViewController {
    
    var signInVs: SignInViewScreen?
    var viewModel: SignInViewModel?
    weak var coordinator:  MainCoordinator?
    
    override func loadView() {
        signInVs = SignInViewScreen()
        view = signInVs
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
        signInVs?.userTextField.text = "Admin"
        signInVs?.passwordTextField.text = "1234"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    private func initViewModel() {
        if let screen = self.signInVs {
            if let coordinator = coordinator {
                viewModel = SignInViewModel(signInViewScreen: screen, signInViewController: self, coordinator: coordinator)
                viewModel?.signInAction()
            }
        }
    }
}
