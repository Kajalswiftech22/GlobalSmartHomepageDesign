//
//  UtilityViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

struct UtilityModel {
    var image: String = ""
    var title: String = ""
}

let utilityList: [UtilityModel] = [
    UtilityModel(image: "IMEPay", title: "Khane Pani"),
    UtilityModel(image: "esewa", title: "NEA Payment"),
]

class UtilityViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "UtilityTableViewCell", bundle: nil), forCellReuseIdentifier: "UtilityTableViewCell")
    }
}
extension UtilityViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return utilityList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UtilityTableViewCell", for: indexPath) as! UtilityTableViewCell
        cell.configure(model: utilityList[indexPath.row])
        return cell
    }
}
