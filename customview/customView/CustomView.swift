//
//  CustomView.swift
//  customview
//
//  Created by Ngoduc on 2/15/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class CustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        self.backgroundColor = .red
        
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)).cgPath
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 10
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        // coner radiou khong hoat dong
        self.layer.cornerRadius = 10
        //khong hien thi phan thua
//        self.layer.masksToBounds = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
