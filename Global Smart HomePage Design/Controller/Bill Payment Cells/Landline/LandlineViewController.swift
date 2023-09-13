//
//  LandlineViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

struct LandlineModel {
    var image: String = ""
    var title: String = ""
}

let landline: [LandlineModel] = [
    LandlineModel(image: "NTC", title: "NTC Data Package"),
    LandlineModel(image: "NCELL", title: "Ncell Data Package"),
]

class LandlineViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "LandlineTableViewCell", bundle: nil), forCellReuseIdentifier: "LandlineTableViewCell")
    }
}
extension LandlineViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landline.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LandlineTableViewCell", for: indexPath) as! LandlineTableViewCell
        cell.configure(model: landline[indexPath.row])
        return cell
    }
}
