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
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    
    var dataList = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image=UIImage(named: dataList["image"]!)
        titleLabel.text! = dataList["title"]!
        descriptionLabel.text! = dataList["detailDescription"]!
        priceLabel.text! = dataList["afterprice"]!
        
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
