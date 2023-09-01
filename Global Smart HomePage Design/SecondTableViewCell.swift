//
//  SecondTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/1/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(UINib(nibName: "iconsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "iconsCollectionViewCell")

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(model: IconLabelModels) {
       
    }
    
}
