//
//  CustomMenu.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 21/04/23.
//

import UIKit
import SnapKit

class CustomButton: UIButton {
    
    convenience init(menuOptions: [String], primaryTitle: String) {
        self.init(type: .system)
        setTitleColor(.white, for: .normal)
        backgroundColor = .white
        layer.cornerRadius = 8
        let font = UIFont.boldSystemFont(ofSize: 16)

        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: UIColor.black
        ]

        let attributedTitle = NSAttributedString(string: primaryTitle, attributes: attributes)
        setAttributedTitle(attributedTitle, for: .normal)
        
        
        snp.makeConstraints { make in
            make.height.equalTo(40)
        }
        
        let menuElements = menuOptions.map { option in
            UIAction(title: option, handler: { _ in
                self.setTitle(option, for: .normal)
                let font = UIFont.boldSystemFont(ofSize: 16)

                let attributes: [NSAttributedString.Key: Any] = [
                    .font: font,
                    .foregroundColor: UIColor.black
                ]

                let attributedTitle = NSAttributedString(string: option, attributes: attributes)
                self.setAttributedTitle(attributedTitle, for: .normal)
            })
        }
        menu = UIMenu(title: "", children: menuElements)
        showsMenuAsPrimaryAction = true
    }
}

    

