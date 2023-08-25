//
//  TabBarViewController.swift
//  Global Smart HomePage Design
//
//  Created by Kajol   on 25/08/23.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTabs()
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
        
        self.viewControllers = [home, card, history, profile]
    }
}
