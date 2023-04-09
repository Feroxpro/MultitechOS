//
//  HomeViewController.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 03/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeViewScreen = HomeViewScreen()
    var items: [Item] = []
    var viewModel: HomeViewModel?
    
    override func loadView() {
        self.view = self.homeViewScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        self.homeViewScreen.configProtocolsCollectionView(delegate: self, dataSource: self)
        addData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func addData() {
        loadItems { items in
            self.items = items
        }
    }
}

extension HomeViewController:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeViewScreen.identifier, for: indexPath) as! HomeCollectionViewCell
        let item = items[indexPath.item]
        cell.nameLabel.text = item.name
        cell.profileImage.image = UIImage(systemName: item.image)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.didSelectItem(at: indexPath.row)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 18
    }
    
}
