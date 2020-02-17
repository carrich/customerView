//
//  brickViewController.swift
//  customview
//
//  Created by Ngoduc on 2/15/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class brickViewController: UIViewController {
    
    @IBOutlet weak var chuL: UIButton!
    @IBOutlet weak var chuZ: UIButton!
    @IBOutlet weak var chuI: UIButton!
    @IBOutlet weak var chuJ: UIButton!
    var brickView1: brickView!
    var chu: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chuJ.layer.cornerRadius = 20
        chuI.layer.cornerRadius = 20
        chuZ.layer.cornerRadius = 20
        chuL.layer.cornerRadius = 20
        //        draw0()
        
    }
    
    func draw0() {
        for i in 0...2{
            
            if i == 2 {
                for j in 1...2 {
                    
                    drawBrick(row: i, col: j, radius: 30, color: .red)
                }
            }
            drawBrick(row: i, col: 1, radius: 30, color: .red)
        }
    }
    func draw0D() {
        for i in 0...2{
            
            if i == 2 {
                for j in 1...2 {
                    
                    drawBrick(row: i, col: j, radius: 30, color: .white)
                }
            }
            drawBrick(row: i, col: 1, radius: 30, color: .white)
        }
    }
    func drawI() {
        for i in 0...2{
            drawBrick(row: i, col: 1, radius: 30, color: .red)
        }
    }
    func drawID() {
        for i in 0...2{
            drawBrick(row: i, col: 1, radius: 30, color: .white)
        }
    }
    func drawJ() {
        for i in 0...2{
            
            if i == 2 {
                for j in 0...1 {
                    
                    drawBrick(row: i, col: j, radius: 30, color: .red)
                }
            }
            drawBrick(row: i, col: 1, radius: 30, color: .red)
        }
    }
    func drawJD() {
        for i in 0...2{
            
            if i == 2 {
                for j in 0...1 {
                    
                    drawBrick(row: i, col: j, radius: 30, color: .white)
                }
            }
            drawBrick(row: i, col: 1, radius: 30, color: .red)
        }
    }
    func drawZ() {
        for i in 0...2{
            switch i {
            case 0:
                for j in 0...1 {
                    
                    drawBrick(row: i, col: j, radius: 30, color: .red)
                }
            case 1:
                drawBrick(row: 1, col: 1, radius: 30, color: .red)
            case 2:
                for j in 1...2 {
                    
                    drawBrick(row: i, col: j, radius: 30, color: .red)
                }
            default:
                print("none")
            }
            
        }
    }
    func drawZD() {
       for i in 0...2{
            switch i {
            case 0:
                for j in 0...1 {
                    
                    drawBrick(row: i, col: j, radius: 30, color: .white)
                }
            case 1:
                drawBrick(row: 1, col: 1, radius: 30, color: .white)
            case 2:
                for j in 1...2 {
                    
                    drawBrick(row: i, col: j, radius: 30, color: .white)
                }
            default:
                print("none")
            }
            
        }
    }
    
    func drawBrick(row: Int, col: Int, radius: CGFloat, color: UIColor) {
        let d = radius*2
        let brick = brickView(startPoint: CGPoint(x: d*CGFloat(col)+120, y: d*CGFloat(row)+250), radius: radius, color: color)
        view.addSubview(brick)
    }
    func drawCh(ch: String){
        switch ch {
        case "J":
            drawJ()
        case "I":
            drawI()
        case "L":
            draw0()
        case "Z":
            drawZ()
        default:
            print("none")
        }
    }
    func delCh(ch: String){
        switch ch {
        case "J":
            drawJD()
        case "I":
            drawID()
        case "L":
            draw0D()
        case "Z":
            drawZD()
        default:
            print("none")
        }
    }
    
    @IBAction func drawL(_ sender: Any) {
        if chu == "" {
            chu = "L"
            drawCh(ch: chu)
        }
        delCh(ch: chu)
        chu = "L"
        drawCh(ch: chu)
    }
    
    @IBAction func drawI(_ sender: Any) {
        if chu == "" {
            chu = "I"
            drawCh(ch: chu)
        }
        delCh(ch: chu)
        chu = "I"
        drawCh(ch: chu)
    }
    
    @IBAction func drawJ(_ sender: Any) {
        if chu == "" {
            chu = "J"
            drawCh(ch: chu)
        }
        delCh(ch: chu)
        chu = "J"
        drawCh(ch: chu)
    }
    
    @IBAction func drawZ(_ sender: Any) {
        if chu == "" {
            chu = "Z"
            drawCh(ch: chu)
        }
        delCh(ch: chu)
        chu = "Z"
        drawCh(ch: chu)
    }
}
