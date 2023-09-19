//
//  TelevisionViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

struct TelevisionModel {
    var image: String = ""
    var title: String = ""
}

let televisionList: [TelevisionModel] = [
    TelevisionModel(image: "IMEPay", title: "Clear TV "),
    TelevisionModel(image: "IMEPay", title: "Dishome "),
    TelevisionModel(image: "IMEPay", title: "Mero TV "),
    TelevisionModel(image: "IMEPay", title: "Net TV "),
    TelevisionModel(image: "IMEPay", title: "Prabhu TV "),
    TelevisionModel(image: "IMEPay", title: "SIM TV "),
    TelevisionModel(image: "IMEPay", title: "SKY TV "),
]

class TelevisionViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TelevisionTableViewCell", bundle: nil), forCellReuseIdentifier: "TelevisionTableViewCell")
    }
}
extension TelevisionViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return televisionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TelevisionTableViewCell", for: indexPath) as! TelevisionTableViewCell
        cell.configure(model: televisionList[indexPath.row])
        return cell
    }
}
