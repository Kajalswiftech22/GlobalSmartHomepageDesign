//
//  SecondTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/1/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var tapGesture: UITapGestureRecognizer!
    weak var parent:TabBarViewController?

    var cellselection:(() -> ())?

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
        
        setupTapGesture()
        collectionView.register(UINib(nibName: "iconsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "iconsCollectionViewCell")
    }
    
    private func setupTapGesture() {
           tapGesture = UITapGestureRecognizer(target: self, action: #selector(cellTapped))
//           self.addGestureRecognizer(tapGesture)
       }
    
    @objc private func cellTapped() {
        if let tappedIndexPath = collectionView.indexPathForItem(at: tapGesture.location(in: collectionView)) {
            if tappedIndexPath.item == 0{
                guard (parent?.navigationController) != nil else {
                               print("Parent view controller is not embedded in a navigation controller.")
                               return
                           }
   
                let destinationVC = LoadToViewController()
                parent?.navigationController!.pushViewController(destinationVC,animated:true)
            }
            else {
                print("Cell tapped with label: \(iconLabelList[tappedIndexPath.item].title)")
            }
        }
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        self.cellselection?()
    }
}

