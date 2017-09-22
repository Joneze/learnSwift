//
//  ViewController.swift
//  swiftProjectTest
//
//  Created by jay on 2017/6/20.
//  Copyright © 2017年 曾辉. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var ctrNames:[String]?
    var tableView : UITableView?
    var label: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ctrNames = ["1","2","3","4","5","6","7","8","9","0"]
        self.tableView = UITableView.init(frame: CGRect(x: 0, y: 64, width: self.view.frame.width, height: self.view.frame.height), style: UITableViewStyle.grouped)
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.view.addSubview(self.tableView!)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return ctrNames!.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let iderntify:String = "swiftCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: iderntify)
        if cell == nil {
            cell=UITableViewCell(style: UITableViewCellStyle.default
                , reuseIdentifier: iderntify);
        }
        
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell?.textLabel?.text = self.ctrNames?[indexPath.section]
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

