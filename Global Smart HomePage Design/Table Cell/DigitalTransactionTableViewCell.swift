//
//  DigitalTransactionTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/10/23.
//

import UIKit

class DigitalTransactionTableViewCell: UITableViewCell {

    @IBOutlet weak var tableView: UITableView!
    
    let iconList: [IconModels] = [
        IconModels(image: "palsnet", title: "ISP Payment", description: "20 Aug, 2023 . test124", amount: "-29,385.00", status: "Success"),
        IconModels(image: "globalSmart", title: "GIBL Fund Transfer", description: "20 Aug, 2023 . MEEZU LAWOT . ###1843", amount: "-200.00", status: "Success"),
        IconModels(image: "globalSmart", title: "GIBL Fund Transfer", description: "20 Aug, 2023 . MEEZU LAWOT . ###1843", amount: "-30,000.00", status: "Success"),
    ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tableView.register(UINib(nibName: "ISPPaymentTableViewCell", bundle: nil), forCellReuseIdentifier: "ISPPaymentTableViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(model: IconModels) {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension DigitalTransactionTableViewCell: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ISPPaymentTableViewCell", for: indexPath) as! ISPPaymentTableViewCell
        cell.configure(model: iconList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
