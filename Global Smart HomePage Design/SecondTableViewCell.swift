//
//  SecondTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/1/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

    
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

    override func awakeFromNib() {
        super.awakeFromNib()
        
//        flowLayout.minimumInteritemSpacing = 10
//        flowLayout.minimumLineSpacing = 10
        
        collectionView.register(UINib(nibName: "iconsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "iconsCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(model: IconLabelModels) {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
    }
}

extension SecondTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iconLabelList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "iconsCollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.configure(model: iconLabelList[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.frame.width
        let numberOfItemsPerRow: CGFloat = 4

        let cellWidth = (collectionViewWidth - (numberOfItemsPerRow - 1) * flowLayout.minimumInteritemSpacing) / numberOfItemsPerRow

        return CGSize(width: cellWidth, height: 100)
    }
}
