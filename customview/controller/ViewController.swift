//
//  ViewController.swift
//  customview
//
//  Created by Ngoduc on 2/15/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let view1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 10
        view.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity  = 0.5
        return view
    }()
    
    
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        view.layer.cornerRadius = 10
        view.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity  = 0.5
        return view
    }()
    let view3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.layer.cornerRadius = 10
        view.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity  = 0.5
        return view
    }()
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
        
        view1.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        view1.layer.shadowOffset = CGSize(width: 10, height: 10)
        view1.layer.shadowRadius = 10
        view1.layer.shadowOpacity  = 0.5
        
    }
    
    
}

