//
//  AddServiceViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 14/04/23.
//

import UIKit

class AddServiceViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    let screen = AddServiceViewScreeen()
    
    override func loadView() {
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
