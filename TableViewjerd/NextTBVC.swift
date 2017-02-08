//
//  NextTBVC.swift
//  TableViewjerd
//
//  Created by yuki yamamoto on H29/01/29.
//  Copyright © 平成29年 yuki yamamoto. All rights reserved.
//

import Foundation
import UIKit

class NextTableViewController: UITableViewController {
    
    var names2 = [String]()
    var identities2 = [String]()
    var imgArray2 = [String]()

    override func viewDidLoad() {
        
        names2 = ["ちっす","もう三日","大丈夫！","びしばし"]
        identities2 = ["A2","B2","C2","D2"]
        imgArray2 = ["Oval1","Oval2","Oval3","Oval4"]
        
        //UITableViewの空セルのseparatorを消す
        tableView.tableFooterView = UIView(frame: .zero)
    }




    

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names2.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // tableCell の ID で UITableViewCell のインスタンスを生成
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2")
        
        
        let img = UIImage(named:"\(imgArray2[indexPath.row])")
        
        // Tag番号 1 で UIImageView インスタンスの生成
        let imageView = cell2?.viewWithTag(1) as! UIImageView
        imageView.image = img
        
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = cell2?.viewWithTag(2) as! UILabel
        label1.text = "\(names2[indexPath.row])"
        
        return cell2!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcName = identities2[indexPath.row]
        let ViewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(ViewController!, animated: true)
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // セルの高さを設定
        return 64
    }
}











