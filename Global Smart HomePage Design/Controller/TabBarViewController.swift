//
//  TabBarViewController.swift
//  Global Smart HomePage Design
//
//  Created by Kajol   on 25/08/23.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let middleBtn : UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        btn.setTitle("", for: .normal)
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = btn.frame.height/2
        if let image = UIImage(systemName: "qrcode.viewfinder") {
               let imageSize = CGSize(width: 28, height: 28) // Adjust the size as needed
               let scaledImage = image.scaleToSize(imageSize)
               let tintedImage = scaledImage.withTintColor(.white)
                    btn.setImage(tintedImage, for: .normal)
           }
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTabs()
        self.configureNavigationBar()
        middleBtn.frame = CGRect(x: Int(self.tabBar.bounds.width)/2 - 30, y: -28, width: 60, height: 60)
        middleBtn.addTarget(self, action: #selector(customBtnTapped), for: .touchUpInside)
        self.tabBar.addSubview(middleBtn)

    }
    
    @objc private func customBtnTapped() {
        navigateToQRViewController()
    }
    
    private func navigateToQRViewController() {
        let qr = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "QRViewController") as! QRViewController
        self.navigationController?.pushViewController(qr, animated: true)
    }
    
    private func setUpTabs() {
        
        let home = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let homeItem = UITabBarItem(title: "Home", image: UIImage.init(systemName: "house.fill"), tag: 1)
        home.tabBarItem = homeItem
        
        let card = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "CardViewController") as! CardViewController
        let cardItem = UITabBarItem(title: "Card", image: UIImage.init(systemName: "creditcard.fill"), tag: 2)
        card.tabBarItem = cardItem
        
        let history = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "HistoryViewController") as! HistoryViewController
        let historyItem = UITabBarItem(title: "History", image: UIImage.init(systemName: "list.clipboard.fill"), tag: 3)
        history.tabBarItem = historyItem
        
        let profile = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        let profileItem = UITabBarItem(title: "Profile", image: UIImage.init(systemName: "person.crop.circle"), tag: 5)
        profile.tabBarItem = profileItem
        
        let qr = QRViewController()
        let qrItem = UITabBarItem(title: "", image: UIImage.init(systemName: "qrcode.viewfinder"), tag: 5)
        qr.tabBarItem = qrItem
        
        self.viewControllers = [home, card, qr, history, profile]
    }
    
     private func  configureNavigationBar() {

         self.navigationController?.navigationBar.tintColor = .gray
         let bellButton = UIBarButtonItem(image: UIImage(systemName: "bell.fill"),
                                                             style: .done,
                                                             target: self,
                                                             action: nil)
         let heartButton = UIBarButtonItem(image: UIImage(systemName: "heart.fill"),
                                                                  style: .done,
                                                                  target: self,
                                                                  action: nil)
         let searchButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"),
                                                                  style: .done,
                                                                  target: self,
                                                                  action: nil)
         navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "global"),
                                                            style: .done,
                                                            target: self,
                                                            action: nil)
         navigationItem.leftBarButtonItem?.tintColor = .blue
         navigationItem.leftBarButtonItem?.imageInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)
         
         bellButton.imageInsets = UIEdgeInsets(top: 0.0, left: 0, bottom: 0, right: 0)
         heartButton.imageInsets = UIEdgeInsets(top: 0.0, left: 15, bottom: 0, right: -20)
         searchButton.imageInsets = UIEdgeInsets(top: 0.0, left: 60, bottom: 0, right: 0)

         navigationItem.rightBarButtonItems = [bellButton, heartButton, searchButton]
     }
}
extension UIImage {
    func scaleToSize(_ size: CGSize) -> UIImage {
        UIGraphicsImageRenderer(size: size).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
