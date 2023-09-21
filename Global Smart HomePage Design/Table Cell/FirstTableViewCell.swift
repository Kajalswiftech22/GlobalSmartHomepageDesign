//
//  FirstTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/30/23.
//

import UIKit

struct AccountDetails: Codable {
    var accountNum: String?
    var actualBalance: String?
    var balance: String?
    var accuredInterest: String?
    var interest: String?
    var availableBalance: String?
    var amount: String?
}

class FirstTableViewCell: UITableViewCell {
    
    @IBOutlet weak var accNumber: UILabel!
    @IBOutlet weak var actualBalxx: UILabel!
    @IBOutlet weak var availableBal: UILabel!
    @IBOutlet weak var interestXX: UILabel!
    @IBOutlet weak var accuredIntXXX: UILabel!
    @IBOutlet weak var actualBal: UILabel!
    @IBOutlet weak var interestRateView: UIView!
    @IBOutlet weak var fundTransferView: UIView!
    @IBOutlet weak var viewStatement: UIView!
    @IBOutlet weak var threeDotsView: UIView!
    @IBOutlet weak var lastDaysTransaction: UIView!
    @IBOutlet weak var eyeImageView: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    
    var isContentVisible = true
    let userDefaults = UserDefaults.standard
    
    var label = AccountDetails(accountNum: "03308010001842", actualBalance: "6823", balance: ".01", accuredInterest: "200", interest: ".16", availableBalance: ".201", amount: "5000")
    var fetchDetail = AccountDetails()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(eyeImageTapped))
        eyeImageView.isUserInteractionEnabled = true
        eyeImageView.addGestureRecognizer(tapGesture)
        
        interestRateView.layer.cornerRadius = 6
        fundTransferView.layer.cornerRadius = 6
        viewStatement.layer.cornerRadius = 6
        threeDotsView.layer.cornerRadius = 6
        lastDaysTransaction.layer.cornerRadius = 6
        saveAccountDetails()
        fetchAccountDetails()

    }
    
    func saveAccountDetails() {
        let encoder = JSONEncoder()
               if let encoded = try? encoder.encode(label) {
                   UserDefaults.standard.set(encoded, forKey: "AccountDetails")
               }
    }
    
    func  fetchAccountDetails() {
        let decoder = JSONDecoder()
        if let data = UserDefaults.standard.data(forKey: "AccountDetails") {
           if let decoded = try? decoder.decode(AccountDetails.self, from: data) {
               fetchDetail = decoded
            }
        }
    }
    
    
    @objc func eyeImageTapped() {
        
        isContentVisible.toggle()
        

//        if let content = fetchDetail.accountNum1{
//            contentLabel.text =  isContentVisible ? "XXX" : content
//        }
        accNumber.text = isContentVisible ? "XXX" : fetchDetail.accountNum
        actualBal.text = isContentVisible ? "XXX" : fetchDetail.actualBalance
        actualBalxx.text = isContentVisible ? ".xx" : fetchDetail.balance
        accuredIntXXX.text = isContentVisible ? "XXX" : fetchDetail.accuredInterest
        interestXX.text = isContentVisible ? ".XX" : fetchDetail.interest
        contentLabel.text = isContentVisible ? "XXX" : fetchDetail.amount
        availableBal.text = isContentVisible ? ".xx" : fetchDetail.availableBalance
        
        eyeImageView.image = isContentVisible ? UIImage(systemName: "eye.fill") : UIImage(systemName: "eye.slash.fill")
    }
}
