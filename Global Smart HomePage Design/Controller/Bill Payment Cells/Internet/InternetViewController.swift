//
//  InternetViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

struct InternetModel {
    var image: String = ""
    var title: String = ""
}

let internetList: [InternetModel] = [
    InternetModel(image: "IMEPay", title: "Arroenet "),
    InternetModel(image: "IMEPay", title: "Classic Tech "),
    InternetModel(image: "IMEPay", title: "Dish Home Fiber Net "),
    InternetModel(image: "IMEPay", title: "Doen Net "),
    InternetModel(image: "IMEPay", title: "Loop Network"),
    InternetModel(image: "IMEPay", title: "NT FTTH"),
    InternetModel(image: "IMEPay", title: "NTC ADSL Volume"),
    InternetModel(image: "IMEPay", title: "Palsnet"),
    InternetModel(image: "IMEPay", title: "Prabhu Net"),
    InternetModel(image: "IMEPay", title: "Reliant Technology"),
    InternetModel(image: "IMEPay", title: "SUBISU"),
    InternetModel(image: "IMEPay", title: "Tech Minds"),
    InternetModel(image: "IMEPay", title: "Vianet"),
    InternetModel(image: "IMEPay", title: "Websurfer"),
    InternetModel(image: "IMEPay", title: "WiMax"),
    InternetModel(image: "IMEPay", title: "WorldLink"),
]

class InternetViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "InternetTableViewCell", bundle: nil), forCellReuseIdentifier: "InternetTableViewCell")
    }
}
extension InternetViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return internetList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InternetTableViewCell", for: indexPath) as! InternetTableViewCell
        cell.configure(model: internetList[indexPath.row])
        return cell
    }
}
