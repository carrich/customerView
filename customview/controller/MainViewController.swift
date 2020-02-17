//
//  MainViewController.swift
//  customview
//
//  Created by Ngoduc on 2/15/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let view1 = CustomView()
    let view2 = CustomView()
    let view3 = CustomView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view1.frame = CGRect(x: 0, y: 100, width: 300, height: 100)
        view2.frame = CGRect(x: 0, y: 250, width: 300, height: 100)
        view3.frame = CGRect(x: 0, y: 400, width: 300, height: 100)
        view1.center.x = view.center.x
        view2.center.x = view.center.x
        view3.center.x = view.center.x
    }
    
    
    
    
}
