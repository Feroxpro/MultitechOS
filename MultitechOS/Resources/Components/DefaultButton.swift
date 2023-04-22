//
//  DefaultButton+UIButton.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 13/04/23.
//

import UIKit
import SnapKit

class DefaultButton: UIButton {
   
    init(title: String) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
        backgroundColor = .red
        layer.cornerRadius = 8
        
        snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(40)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
