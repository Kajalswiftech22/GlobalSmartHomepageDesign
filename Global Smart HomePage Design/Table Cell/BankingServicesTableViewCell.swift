//
//  BankingServicesTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/4/23.
//

import UIKit

class BankingServicesTableViewCell: UITableViewCell {

    @IBOutlet weak var bankingServiceCollectionView: UICollectionView!
    
    let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    
    let iconLabelList: [IconLabelModel] = [
        IconLabelModel(image: "calendar", title: "Schedule", color: .purple),
        IconLabelModel(image: "airplane.departure", title: "Air", color: .systemBlue),
        IconLabelModel(image: "iphone.gen3.badge.play", title: "Mobile", color: .systemCyan),
        IconLabelModel(image: "menubar.dock.rectangle.badge.record", title: "ECOMC", color: .systemGray6),
    ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bankingServiceCollectionView.register(UINib(nibName: "BankingServicesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BankingServicesCollectionViewCell")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
   
    }
    
    func configure(model: IconLabelModels){
        bankingServiceCollectionView.dataSource = self
        bankingServiceCollectionView.delegate = self
    }
    
}
extension BankingServicesTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iconLabelList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bankingServiceCollectionView.dequeueReusableCell(withReuseIdentifier: "BankingServicesCollectionViewCell", for: indexPath) as! BankingServicesCollectionViewCell
        
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
