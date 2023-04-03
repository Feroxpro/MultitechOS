//
//  HomeViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 03/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeViewScreen = HomeViewScreen()
    let dataListMock = ItemListMock.shared
    var list: [Item]?
    
    override func loadView() {
        self.view = self.homeViewScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeViewScreen.configProtocolsCollectionView(delegate: self, dataSource: self)
        
        populateList()
    }
    
    func populateList() {
        dataListMock.addItems { items in
            self.list = items
        }
    }
}

extension HomeViewController:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = list?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeViewScreen.identifier, for: indexPath) as! HomeCollectionViewCell
        
        if let item = list?[indexPath.item] {
            cell.items = item
        }
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 18
    }

}
