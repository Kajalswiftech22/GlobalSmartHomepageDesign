//
//  MobileTopupViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

struct TopupModel {
    var image: String = ""
    var title: String = ""
}

let topupList: [TopupModel] = [
    TopupModel(image: "CDMA", title: "CDMA"),
    TopupModel(image: "NCELL", title: "NCELL"),
    TopupModel(image: "NTC", title: "NTC Postpaid"),
    TopupModel(image: "NTC", title: "NTC Prepaid"),
]

class MobileTopupViewController: UIViewController {

    @IBOutlet weak var topupTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topupTableView.delegate = self
        topupTableView.dataSource = self
        topupTableView.register(UINib(nibName: "TopupTableViewCell", bundle: nil), forCellReuseIdentifier: "TopupTableViewCell")

    }
}

extension MobileTopupViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topupList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopupTableViewCell", for: indexPath) as! TopupTableViewCell
        cell.configure(model: topupList[indexPath.row])
        return cell
    }
}
