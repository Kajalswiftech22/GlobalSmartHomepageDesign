//
//  LoadWalletViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

struct LoadWalletModel {
    var image: String = ""
    var title: String = ""
}

let loadList: [LoadWalletModel] = [
    LoadWalletModel(image: "IMEPay", title: "IME Pay"),
    LoadWalletModel(image: "esewa", title: "eSewa"),
    LoadWalletModel(image: "khalti", title: "Khalti"),
]

class LoadWalletViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "LoadWalletTableViewCell", bundle: nil), forCellReuseIdentifier: "LoadWalletTableViewCell")

    }
}

extension LoadWalletViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loadList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LoadWalletTableViewCell", for: indexPath) as! LoadWalletTableViewCell
        cell.configure(model: loadList[indexPath.row])
        return cell
    }
}
