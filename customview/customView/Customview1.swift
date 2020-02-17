//
//  Customview1.swift
//  customview
//
//  Created by Ngoduc on 2/15/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class Customview1: CustomView {
    // su dung convenience truoc init de ben trong init nay co the goi init khac
    convenience init(color: UIColor){
        self.init(frame: .zero)
        self.backgroundColor = color
    }
}
