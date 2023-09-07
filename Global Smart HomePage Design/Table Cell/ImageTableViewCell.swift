//
//  ImageTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/4/23.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!

    
    let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

    var currentCellIndex = 0
    var images = ["green", "flower", "taj", "background"]
    var timer: Timer?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
        imageCollectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionViewCell")
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        setUpPageControl()
    }
    
    @objc func slideToNext() {
            if currentCellIndex < images.count - 1 {
                currentCellIndex = currentCellIndex + 1
            }
            else {
                currentCellIndex = 0
            }

            let xOffset = CGFloat(currentCellIndex) * imageCollectionView.frame.width
                imageCollectionView.setContentOffset(CGPoint(x: xOffset, y: 0), animated: true)
                pageControl.currentPage = Int(currentCellIndex)

        }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func setUpPageControl(){
        pageControl.numberOfPages = images.count
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.currentPageIndicatorTintColor = UIColor.tintColor
        pageControl.pageIndicatorTintColor = UIColor.lightGray.withAlphaComponent(0.8)
    }
}

extension ImageTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imageCollectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        
        cell.cellImageView.image = UIImage(named: images[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.frame.width
        let numberOfItemsPerRow: CGFloat = 1
        let cellWidth = (collectionViewWidth - (numberOfItemsPerRow) * flowLayout.minimumInteritemSpacing) / numberOfItemsPerRow

        return CGSize(width: cellWidth, height: self.frame.height)
    }
}
