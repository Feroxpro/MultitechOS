//
//  PokeCollectionViewCellScreen.swift
//  PokedexProject
//
//  Created by Felipe Domingos on 10/12/22.
//

import UIKit
import SnapKit

class HomeCollectionViewCell: BaseViewCell {
    
    lazy var serviceView: UIView = {
        let img = UIView()
        img.layer.cornerRadius = 10
//        img.layer.masksToBounds = true
        img.backgroundColor = .white
        return img
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.textColor = .black
        return label
    }()
    
    lazy var profileImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.tintColor = .red
        return image
    }()

    
    override func addSubviews() {
        addSubview(serviceView)
        addSubview(nameLabel)
        addSubview(profileImage)
    }
    
    override func configureConstraints() {
        serviceView.snp.makeConstraints{ (make) in
            make.edges.equalToSuperview()
        }
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(serviceView.snp.bottom).inset(10)
        }
        profileImage.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
    }
}

