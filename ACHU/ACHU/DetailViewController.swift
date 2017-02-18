//
//  DetailViewController.swift
//  ACHU
//
//  Created by Dongheon Ryu on 2017. 2. 18..
//  Copyright © 2017년 Dongheon Ryu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionView: UITextView!

    
    var dataList = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image=UIImage(named: dataList["image"]!)
        titleLabel.text! = dataList["title"]!
        descriptionView.text! = dataList["detailDescription"]!
        priceLabel.text! = dataList["afterprice"]!
        
    }

    @IBAction func reservationButtonAction(_ sender: Any) {
        // Create the alert controller
        let alertController = UIAlertController(title: "예약", message: "예약이 완료 되었습니다.", preferredStyle: .alert)
        
        // Create the actions
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            NSLog("OK Pressed")
        }

        
        // Add the actions
        alertController.addAction(okAction)

        
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
