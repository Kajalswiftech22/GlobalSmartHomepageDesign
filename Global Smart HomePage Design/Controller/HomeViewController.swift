//
//  HomeViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/25/23.
//

import UIKit

struct IconLabelModel {
    var image: String = ""
    var title: String = ""
    var color: UIColor = .clear
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var interest: UIView!
    @IBOutlet weak var fundTransferView: UIView!
    @IBOutlet weak var viewStatement: UIView!
    @IBOutlet weak var threeDotView: UIView!
    @IBOutlet weak var lastDaysTransaction: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    let iconLabelList: [IconLabelModel] = [
        IconLabelModel(image: "menubar.dock.rectangle.badge.record", title: "Load to", color: .orange),
        IconLabelModel(image: "creditcard.fill", title: "Merchant", color: .systemMint),
        IconLabelModel(image: "iphone", title: "TopUp", color: .systemGray5),
        IconLabelModel(image: "iphone.gen2.radiowaves.left.and.right", title: "Data", color: .systemGray5),
        IconLabelModel(image: "wifi", title: "ISP", color: .systemMint),
        IconLabelModel(image: "creditcard.circle", title: "Credit Card", color: .systemCyan),
        IconLabelModel(image: "car.rear.waves.up.fill", title: "EMI", color: .systemGray5),
        IconLabelModel(image: "beach.umbrella.fill", title: "Insurance", color: .systemCyan)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set the corner radius
        lastDaysTransaction.layer.cornerRadius = 8
        threeDotView.layer.cornerRadius = 6
        viewStatement.layer.cornerRadius = 6
        fundTransferView.layer.cornerRadius = 6
        interest.layer.cornerRadius = 4
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        
        collectionView.register(UINib(nibName: "iconsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "iconsCollectionViewCell")
        
    }
}
    
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return iconLabelList.count
        }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "iconsCollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.configure(model: iconLabelList[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 10, height: 10)
    }

   
}

