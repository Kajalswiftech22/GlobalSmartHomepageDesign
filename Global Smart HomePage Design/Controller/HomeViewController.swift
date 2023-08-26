//
//  HomeViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/25/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var interest: UIView!{
        didSet{
            interest.layer.cornerRadius = 4
        }
    }
    
    @IBOutlet weak var fundTransferView: UIView!{
        didSet{
            fundTransferView.layer.cornerRadius = 6
        }
    }
    
    @IBOutlet weak var viewStatement: UIView!{
        didSet{
            viewStatement.layer.cornerRadius = 6
        }
    }
    
    @IBOutlet weak var threeDotView: UIView!{
        didSet{
            threeDotView.layer.cornerRadius = 6
        }
    }
    
    @IBOutlet weak var lastDaysTransaction: UIView!{
        didSet{
            lastDaysTransaction.layer.cornerRadius = 8
        }
    }
    @IBOutlet weak var qrView: UIView!{
        didSet{
            qrView.layer.cornerRadius = qrView.frame.height/2
        }
    }
    
    @IBOutlet weak var collectionViewOutlet: UIView!
    
    //Change the color of each cell
    let cellColors: [UIColor] = [
        .orange,
        .systemMint,
        .systemGray5,
        .systemGray5,
        .systemMint,
        .systemCyan,
        .systemGray5,
        .systemCyan
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 60
        layout.minimumInteritemSpacing = 20
        layout.itemSize = CGSize(width: 60, height: 60)
        layout.sectionInset = UIEdgeInsets(top: 400, left: 40, bottom: 0, right: 40)

        // Create the collection view using the layout
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .clear

        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        view.addSubview(collectionView)
    }
}
    
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 8
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell

            let colorIndex = indexPath.item % cellColors.count
            cell.backgroundColor = cellColors[colorIndex]
            
            let images = [
                       UIImage(systemName: "menubar.dock.rectangle.badge.record"),
                       UIImage(systemName: "creditcard.fill"),
                       UIImage(systemName: "iphone"),
                       UIImage(systemName: "iphone.gen2.radiowaves.left.and.right"),
                       UIImage(systemName: "wifi"),
                       UIImage(systemName: "creditcard.circle"),
                       UIImage(systemName: "car.rear.waves.up.fill"),
                       UIImage(systemName: "beach.umbrella.fill")
                   ].compactMap({ $0 })
                   
                   if indexPath.item < images.count {
                       cell.configure(with: images[indexPath.item])
                   } else {
                       cell.configure(with: nil) // Handle if there are more cells than images
                   }
            
            return cell
        }
        
    }

