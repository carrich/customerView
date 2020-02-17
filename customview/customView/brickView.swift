//
//  brickView.swift
//  customview
//
//  Created by Ngoduc on 2/15/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class brickView: UIView {
    var radius: CGFloat = 0.0
    var fillColor: UIColor! // mau nen
    
    
    convenience init(startPoint: CGPoint, radius: CGFloat, color: UIColor){
        self.init(frame: CGRect(x: startPoint.x, y: startPoint.y, width: radius*2, height: radius*2))
        self.radius = radius
        self.fillColor = color
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
       
        let shapeLayer = CAShapeLayer()
        // kích thước squareView
        shapeLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 0).cgPath
        shapeLayer.fillColor = fillColor.cgColor
        let L = radius*2
        // x = 1/10L là đoạn kích thước thụt vào
        let x: CGFloat = L/10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.5
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        
        
        
        let topLayerB = CAShapeLayer()
        let path1B = UIBezierPath()
        path1B.move(to: CGPoint(x: 0, y: L))
        path1B.addLine(to: CGPoint(x: L, y: L))
        path1B.addLine(to: CGPoint(x: L-x, y: L-x))
        path1B.addLine(to: CGPoint(x: x, y: L-x))
        
        topLayerB.fillColor = UIColor.white.cgColor
        topLayerB.opacity = 0.2
        topLayerB.path = path1B.cgPath
        shapeLayer.insertSublayer(topLayerB, at: 0)
        
        let topLayerL = CAShapeLayer()
        let path1L = UIBezierPath()
        path1L.move(to: CGPoint(x: 0, y: 0))
        path1L.addLine(to: CGPoint(x: 0, y: L))
        path1L.addLine(to: CGPoint(x: x, y: L-x))
        path1L.addLine(to: CGPoint(x: x, y: x))
        
        topLayerL.fillColor = UIColor.white.cgColor
        topLayerL.opacity = 0.6
        topLayerL.path = path1L.cgPath
        shapeLayer.insertSublayer(topLayerL, at: 0)
        
        let topLayerR = CAShapeLayer()
        let path1R = UIBezierPath()
        path1R.move(to: CGPoint(x: L, y: 0))
        path1R.addLine(to: CGPoint(x: L, y: L))
        path1R.addLine(to: CGPoint(x: L-x, y: L-x))
        path1R.addLine(to: CGPoint(x: L-x, y: x))
        
        topLayerR.fillColor = UIColor.white.cgColor
        topLayerR.opacity = 0.1
        topLayerR.path = path1R.cgPath
        shapeLayer.insertSublayer(topLayerR, at: 0)
        
        
        
         self.layer.addSublayer(shapeLayer)
    }
}
