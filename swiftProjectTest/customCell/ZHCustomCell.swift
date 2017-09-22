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
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
