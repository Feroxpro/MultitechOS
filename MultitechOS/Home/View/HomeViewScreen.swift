//
//  HomeViewScreen.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 03/04/23.
//

import UIKit
import SnapKit

class HomeViewScreen: BaseView {
    
    let identifier: String = "HomeCollectionViewCell"
    
    lazy var logoImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo01")
        return img
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .black
        collectionView.delaysContentTouches = false
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .vertical
        let spacing: CGFloat = 10.0
        layout.minimumInteritemSpacing = spacing
        layout.minimumLineSpacing = spacing
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        collectionView.setCollectionViewLayout(layout, animated: false)
        collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: identifier)
        return collectionView
    }()
    
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource){
        self.collectionView.delegate = delegate
        self.collectionView.dataSource = dataSource
    }
    override func addSubviews() {
        addSubview(logoImage)
        addSubview(collectionView)
    }
    
    override func configureConstraints() {
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            make.width.equalTo(300)
            make.height.equalTo(130)
        }
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(30)
            make.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).inset(18)
            make.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(18)
            make.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).offset(18)
        }
    }
}

