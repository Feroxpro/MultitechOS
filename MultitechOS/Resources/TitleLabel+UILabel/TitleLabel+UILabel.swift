//
//  TitleLabel+UILabel.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 17/04/23.
//

import Foundation

import UIKit
import SnapKit

class Titlelabel: UILabel {
   
    init(text: String) {
        super.init(frame: .zero)
        self.text = text
        font = UIFont.boldSystemFont(ofSize: 20)
        textColor = .red
        numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
