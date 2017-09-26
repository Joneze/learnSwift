//
//  ZHCustomCell.swift
//  swiftProjectTest
//
//  Created by jay on 2017/9/22.
//  Copyright © 2017年 曾辉. All rights reserved.
//

import UIKit

class ZHCustomCell: UITableViewCell {

    var titleLabel:UILabel?
    var contentImageView: UIImageView?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setUpUI()  {
        self.titleLabel = UILabel.init()
        self.titleLabel?.backgroundColor = UIColor.clear
        self.titleLabel?.frame = CGRect(x:20, y:0, width:100, height:30)
        self.titleLabel?.text = "自定义cell"
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        self.titleLabel?.numberOfLines = 0
        self.titleLabel?.textAlignment = NSTextAlignment.center
        self.addSubview(self.titleLabel!)
        
        
    }
    
}
