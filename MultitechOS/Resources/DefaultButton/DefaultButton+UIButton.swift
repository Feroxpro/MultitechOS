//
//  DefaultButton+UIButton.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 13/04/23.
//

import UIKit

class ButtonPattern: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        backgroundColor = .red
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 16)
        layer.cornerRadius = 5
    }
    
}
