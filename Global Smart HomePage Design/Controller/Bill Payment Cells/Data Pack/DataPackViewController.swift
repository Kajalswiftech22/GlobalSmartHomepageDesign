//
//  DataPackViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

struct DataPackModel {
    var image: String = ""
    var title: String = ""
}

let dataPack: [DataPackModel] = [
    DataPackModel(image: "NTC", title: "NTC Data Package"),
    DataPackModel(image: "NCELL", title: "Ncell Data Package"),
]

class DataPackViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "DataPackTableViewCell", bundle: nil), forCellReuseIdentifier: "DataPackTableViewCell")

    }
}

extension DataPackViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataPack.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataPackTableViewCell", for: indexPath) as! DataPackTableViewCell
        cell.configure(model: dataPack[indexPath.row])
        return cell
    }
}

