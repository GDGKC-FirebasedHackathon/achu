//
//  MainViewController.swift
//  ACHU
//
//  Created by Dongheon Ryu on 2017. 2. 18..
//  Copyright © 2017년 Dongheon Ryu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController , UITableViewDataSource{
    
    var dataList : [[String:String]] = [[:]]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dict1 = ["title":"보트 놀이","description":"des1","beforeprice":"100 ->","afterprice":"200","image":"보트놀이.jpg"]
        let dict2 = ["title":"블록 놀이","description":"des1","beforeprice":"100 ->","afterprice":"200","image":"블록놀이.jpg"]
        let dict3 = ["title":"카드 놀이","description":"des1","beforeprice":"100 ->","afterprice":"200","image":"카드놀이.jpg"]
        let dict4 = ["title":"놀이 기구","description":"des1","beforeprice":"100 ->","afterprice":"200","image":"놀이기구.jpg"]
        let dict5 = ["title":"자연 체험","description":"des1","beforeprice":"100 ->","afterprice":"200", "image":"자연체험.jpg"]
        let dict6 = ["title":"레이싱","description":"des1","beforeprice":"100 ->","afterprice":"200", "image":"레이싱.jpeg"]
        let dict7 = ["title":"음식만들기","description":"des1","beforeprice":"100 ->","afterprice":"200", "image":"음식만들기.png"]

    
        
        dataList = [dict1,dict2,dict3,dict4,dict5,dict6,dict7]
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as! CustomCell
        var dicTemp = dataList[indexPath.row]
        cell.titleLabel.text! = dicTemp["title"]!
        cell.descriptionLabel.text! = dicTemp["description"]!
        cell.highPrice.text! = dicTemp["beforeprice"]!
        cell.lowPrice.text! = dicTemp["afterprice"]!
      //  cell.imageView?.image = UIImage(named: "보트놀이.jpg")
        
//        let imageView = UIImageView(frame: CGRect(10, 10, cell.frame.width - 10, cell.frame.height - 10)
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: cell.frame.width-10, height: cell.frame.height-10))
        let image = UIImage(named: dicTemp["image"]!)
        
        imageView.image = image
        cell.backgroundView = UIView()
        cell.backgroundView!.addSubview(imageView)
        
        
        

        
        return cell
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
