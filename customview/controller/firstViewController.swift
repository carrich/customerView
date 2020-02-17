//
//  firstViewController.swift
//  customview
//
//  Created by Ngoduc on 2/15/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

    let view1 = brickView(startPoint: CGPoint(x: 200, y: 100), radius: 50, color: .red)
    let view2 = CircleView(center: CGPoint(x: 200, y: 300), radius: 50, color: .blue)
    let view3 = CircleView(center: CGPoint(x: 200, y: 500), radius: 50, color: .yellow)

    override func viewDidLoad() {
        super.viewDidLoad()

       view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
       
       
    }

    

}
