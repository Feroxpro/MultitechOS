//
//  DefaultTextfield.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 21/04/23.
//

import Foundation

import UIKit
import SnapKit

class DefaultTextField: UITextField {
   
    init(placeholder: String) {
        super.init(frame: .zero)
        backgroundColor = .white
        textColor = .black
        layer.cornerRadius = 6
        let placeholderAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.gray,
            .font: UIFont.systemFont(ofSize: 12)
        ]
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: placeholderAttributes)
        
        snp.makeConstraints { make in
            make.height.equalTo(40)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
