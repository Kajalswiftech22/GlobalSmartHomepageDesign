//
//  InsuranceViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

struct InsuranceModel {
    var image: String = ""
    var title: String = ""
}

let InsuranceList: [InsuranceModel] = [
    InsuranceModel(image: "IMEPay", title: "Ajod Insurance"),
    InsuranceModel(image: "esewa", title: "Asian Life Insurance"),
    InsuranceModel(image: "khalti", title: "Citizen Life Insurance"),
    InsuranceModel(image: "khalti", title: "Everest Insurance"),
    InsuranceModel(image: "khalti", title: "General Insurance"),
    InsuranceModel(image: "khalti", title: "Himalayan Insurance"),
    InsuranceModel(image: "khalti", title: "IME Life Insurance"),
    InsuranceModel(image: "khalti", title: "Jyoti Life Insurance"),
    InsuranceModel(image: "khalti", title: "Jyoti Premium Life Insurance"),
    InsuranceModel(image: "khalti", title: "Lumbini General Insurance"),
    InsuranceModel(image: "khalti", title: "Mahalaxmi Life Insurance"),
    InsuranceModel(image: "khalti", title: "NECO Insurance"),
    InsuranceModel(image: "khalti", title: "NLG Insurance"),
    InsuranceModel(image: "khalti", title: "National Life Insurance"),
    InsuranceModel(image: "khalti", title: "Nepal Insurance"),
    InsuranceModel(image: "khalti", title: "Nepal Life Insurance"),
    InsuranceModel(image: "khalti", title: "Prabhu Life Insurance"),
    InsuranceModel(image: "khalti", title: "Premier Insurance"),
    InsuranceModel(image: "khalti", title: "Prime Life Insurance"),
    InsuranceModel(image: "khalti", title: "Prudential Insurance"),
    InsuranceModel(image: "khalti", title: "Realiable Life Insurance"),
    InsuranceModel(image: "khalti", title: "Sagarmatha Insurance"),
    InsuranceModel(image: "khalti", title: "sanima Life Insurance"),
    InsuranceModel(image: "khalti", title: "Shikhar Insurance"),
    InsuranceModel(image: "khalti", title: "Surya Life Insurance"),
    InsuranceModel(image: "khalti", title: "Union Life Insurance"),
    InsuranceModel(image: "khalti", title: "Union Premium Life Insurance"),
    InsuranceModel(image: "khalti", title: "United Insurance"),
]

class InsuranceViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "InsuranceTableViewCell", bundle: nil), forCellReuseIdentifier: "InsuranceTableViewCell")

    }
}
extension InsuranceViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return InsuranceList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InsuranceTableViewCell", for: indexPath) as! InsuranceTableViewCell
        cell.configure(model: InsuranceList[indexPath.row])
        return cell
    }
}
