//
//  ViewController.swift
//  SwiftCountUpApp
//
//  Created by 志賀大河 on 2019/12/22.
//  Copyright © 2019 Taigashiga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countViewLabel: UILabel!
    
    // カウントアップのための変数
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // ラベルの文字を０に表示させたい // string
        countViewLabel.text = "0"
    }
    
    @IBAction func Puls(_ sender: Any) {
        // countup
        count = count + 1
        // ラベルの数字表示を反映したい
        countViewLabel.text = String(count)
        
        
        // 色が十以上になったら黄色に変更したい
        if count >= 10{
            changeTextColor()
        }else{
         
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        // カウントダウンさせたい
        count = count - 1
        
        // ラベルの数字表示を反映したい
        countViewLabel.text = String(count)
        
        // 色が０以下になったら白になる
        if count <= 0{
            resetColor()
        }
    }
    
    // 色を帰るメソッドをつくってIBactionに入れる（黄色）
    func changeTextColor() {
        countViewLabel.textColor = .yellow
    }
    
    func resetColor() {
        countViewLabel.textColor = .white
    }
}


