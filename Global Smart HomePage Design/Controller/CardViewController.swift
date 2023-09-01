//
//  CardViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/25/23.
//

import UIKit

struct IconLabelModels {
    var image: String = ""
    var title: String = ""
    var color: UIColor = .clear
    var type: CellType = .type1
}

enum CellType {
    case type1
    case type2
}

class CardViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let iconLabelList: [IconLabelModels] = [
        IconLabelModels(image: "menubar.dock.rectangle.badge.record", title: "Load to", color: .orange),
        IconLabelModels(image: "creditcard.fill", title: "Merchant", color: .systemMint),
        IconLabelModels(image: "iphone", title: "TopUp", color: .systemGray5),
        IconLabelModels(image: "iphone.gen2.radiowaves.left.and.right", title: "Data", color: .systemGray5),
        IconLabelModels(image: "wifi", title: "ISP", color: .systemMint),
        IconLabelModels(image: "creditcard.circle", title: "Credit Card", color: .systemCyan),
        IconLabelModels(image: "car.rear.waves.up.fill", title: "EMI", color: .systemGray5),
        IconLabelModels(image: "beach.umbrella.fill", title: "Insurance", color: .systemCyan)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: "FirstTableViewCell")
        tableView.register(UINib(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondTableViewCell")
        
    }
}
extension CardViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = iconLabelList[indexPath.row]
        switch item.type {
        case .type1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            return cell
            
        case .type2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell.configure(model: item)
            return cell
        }
    }
}


