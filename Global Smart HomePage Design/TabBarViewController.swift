//
//  TabBarViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/25/23.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTab()
        self.delegate = self
        
    }
  
    private func setUpTab() {
          guard
              let home = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController,
              let card = UIStoryboard(name: "Card", bundle: nil).instantiateViewController(withIdentifier: "CardViewController") as? CardViewController,
              let history = UIStoryboard(name: "History", bundle: nil).instantiateViewController(withIdentifier: "HistoryViewController") as? HistoryViewController,
              let profile = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController
          else {
              // Handle instantiation errors here, e.g., by printing an error message.
              return
          }

          let homeItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
          let cardItem = UITabBarItem(title: "Card", image: UIImage(systemName: "magnifyingglass"), tag: 2)
          let historyItem = UITabBarItem(title: "History", image: UIImage(systemName: "plus"), tag: 3)
          let profileItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "heart"), tag: 4)

          home.tabBarItem = homeItem
          card.tabBarItem = cardItem
          history.tabBarItem = historyItem
          profile.tabBarItem = profileItem

          self.viewControllers = [home, card, history, profile]
      }
  }

