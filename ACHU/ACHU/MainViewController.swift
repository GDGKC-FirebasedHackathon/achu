//
//  MainViewController.swift
//  ACHU
//
//  Created by Dongheon Ryu on 2017. 2. 18..
//  Copyright © 2017년 Dongheon Ryu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    var dataList : [[String:String]] = [[:]]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dict1 = ["title":"보트 놀이","description":"des1","beforeprice":"12000 ->","afterprice":"8000","image":"보트놀이.jpg","detailDescription":"아이들이 좋아하는 물에서 보트를 타고 다른 아이들과 함께 어울릴 수 있는 액티비티 입니다."]
        let dict2 = ["title":"블록 놀이","description":"des1","beforeprice":"15000 ->","afterprice":"7000","image":"블록놀이.jpg","detailDescription":"블록을 쌓으면서 지능 발전을 할 수 있고 엄빠들이 함께 할 수 있어서 더욱 좋은 놀이"]
        let dict3 = ["title":"카드 놀이","description":"des1","beforeprice":"8000 ->","afterprice":"5000","image":"카드놀이.jpg","detailDescription":"생각하는 사고력을 길러주는 영재 특훈 액티비티"]
        let dict4 = ["title":"놀이 기구","description":"des1","beforeprice":"20000 ->","afterprice":"17000","image":"놀이기구.jpg","detailDescription":"놀이기구를 타며 평소에 하지 못한걸 느끼게 하는 아이의 만족도가 매우 높은 놀이"]
        let dict5 = ["title":"자연 체험","description":"des1","beforeprice":"30000 ->","afterprice":"22000", "image":"자연체험.jpg","detailDescription":"갑갑한 도시에서 벗어나 넓은 자연에서 아이들과 함께 하는 자연 체험"]
        let dict6 = ["title":"레이싱","description":"des1","beforeprice":"50000 ->","afterprice":"38000", "image":"레이싱.jpeg","detailDescription":"아이들이 좋아하는 차를 타며 다른아이와의 사교성을 기를 수 있는 놀이!"]
        let dict7 = ["title":"음식만들기","description":"des1","beforeprice":"20000 ->","afterprice":"14000", "image":"음식만들기.png","detailDescription":"음식을 열심히 만들면서 좋은 추억을 쌓을 수 있는 놀이 "]

    
        
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
 

    
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){

        
        
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            var index = tableView.indexPathForSelectedRow?.row
        }
        if(segue.identifier=="showDetail"){
            (segue.destination as! DetailViewController).dataList = dataList[(self.tableView.indexPathForSelectedRow)!.row]
            print(dataList[(self.tableView.indexPathForSelectedRow)!.row])
        }

    }
    @IBAction func homeAction(_ sender: Any) {
    }
    @IBAction func listAction(_ sender: Any) {
    }
    @IBAction func cartAction(_ sender: Any) {
    }
    @IBAction func myAction(_ sender: Any) {
    }
    @IBAction func settingAction(_ sender: Any) {
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
