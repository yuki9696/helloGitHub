//
//  TBVC.swift
//  TableViewjerd
//
//  Created by yuki yamamoto on H29/01/28.
//  Copyright © 平成29年 yuki yamamoto. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    //配列の宣言
    var names = [String]()
    var identities = [String]()
    var imgArray = [String]()
    
    override func viewDidLoad() {
        
        names = ["こんにちは","ありがとう","ありがとう！！","またね"]
        identities = ["A","B","C","D"]
        imgArray = ["Oval1","Oval2","Oval3","Oval4"]
        
        //UITableViewの空セルのseparatorを消す
        tableView.tableFooterView = UIView(frame: .zero)

    }
    
    //Table Viewのセルの数を指定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // tableCell の ID で UITableViewCell のインスタンスを生成
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
//colorを青にする
        let selectedView = UIView()
        selectedView.backgroundColor = UIColor.init(red: (138.0/255.0), green: (176.0/255.0), blue: (57.0/255.0), alpha: 1.0)
        cell?.selectedBackgroundView =  selectedView
        
        
        let img = UIImage(named:"\(imgArray[indexPath.row])")
        
        // Tag番号 1 で UIImageView インスタンスの生成
        let imageView = cell?.viewWithTag(1) as! UIImageView
        imageView.image = img
        
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = cell?.viewWithTag(2) as! UILabel
        label1.text = "\(names[indexPath.row])"
        
        
        return cell!
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcName = identities[indexPath.row]
        let ViewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(ViewController!, animated: true)
    }
}


































