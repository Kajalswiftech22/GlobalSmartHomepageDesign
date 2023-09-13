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
}

struct IconModels {
    var image: String = ""
    var title: String = ""
    var description: String = ""
    var amount: String = ""
    var status: String = ""
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
    
    let iconList: [IconModels] = [
        IconModels(image: "palsnet", title: "ISP Payment"),
        IconModels(image: "palsnet", title: "ISP Payment"),
        IconModels(image: "palsnet", title: "ISP Payment"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: "FirstTableViewCell")
        tableView.register(UINib(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondTableViewCell")
        tableView.register(UINib(nibName: "ImageTableViewCell", bundle: nil), forCellReuseIdentifier: "ImageTableViewCell")
        tableView.register(UINib(nibName: "BankingServicesTableViewCell", bundle: nil), forCellReuseIdentifier: "BankingServicesTableViewCell")
        tableView.register(UINib(nibName: "DigitalTransactionTableViewCell", bundle: nil), forCellReuseIdentifier: "DigitalTransactionTableViewCell")
        tableView.backgroundColor = .yellow
        
    }
}
extension CardViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = iconLabelList[indexPath.row]
        let items = iconList[indexPath.row]
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell.configure(model: item)
            
            switch indexPath.row{
            case 0:
                    cell.cellselection = {[weak self] in
                        let storyboard = UIStoryboard(name: "LoadWallet", bundle: nil)
                        let vc = storyboard.instantiateViewController(withIdentifier: "LoadWalletViewController") as! LoadWalletViewController
                        self?.navigationController?.pushViewController(vc, animated: true)
                }
            case 1:
                    cell.cellselection = {[weak self] in
                        let storyboard = UIStoryboard(name: "MobileTopup", bundle: nil)
                        let vc = storyboard.instantiateViewController(withIdentifier: "MobileTopupViewController") as! MobileTopupViewController
                        self?.navigationController?.pushViewController(vc, animated: true)
                }
            case 2:
                    cell.cellselection = {[weak self] in
                        let storyboard = UIStoryboard(name: "DataPack", bundle: nil)
                        let vc = storyboard.instantiateViewController(withIdentifier: "DataPackViewController") as! DataPackViewController
                        self?.navigationController?.pushViewController(vc, animated: true)
                }
                
            default:
                return UITableViewCell()
            }
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as! ImageTableViewCell
            return cell
            
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BankingServicesTableViewCell", for: indexPath) as! BankingServicesTableViewCell
            cell.configure(model: item)
            return cell
            
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DigitalTransactionTableViewCell", for: indexPath) as! DigitalTransactionTableViewCell
            cell.configure(model: items)
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0:
            if indexPath.row == 0 {
                return 330
            }
        case 1:
            if indexPath.row == 0 {
                return 300
            }
        case 2:
            return 160
        case 3:
            if indexPath.row == 0 {
                return 180
            }
        case 4:
            if indexPath.row == 0{
                return 300
            }
        default:
            return 0
        }
        return 0
    }
}
