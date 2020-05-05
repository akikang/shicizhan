//
//  ViewController.swift
//  shicizhan
//
//  Created by 程航 on 2020/5/5.
//  Copyright © 2020 chenghang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = [
        Question(text:"窗前明月光，_____ 。",answerArray:["疑是地上霜","举头望明月","低头思故乡","清泉石上流"],theAnswer:"举头望明月")
        Question(text:"锄禾日当午，_____ 。",answerArray:["谁知盘中餐","粒粒皆辛苦","汗滴禾下土","清泉石上流"],theAnswer:"汗滴禾下土")
        Question(text:"离离原上草，_____ 。",answerArray:["野火烧不尽","一岁一枯荣","低头思故乡","春风吹又生"],theAnswer:"一岁一枯荣")
        Question(text:"遥知不是雪，_____ 。",answerArray:["墙角数枝梅","为有暗香来","低头思故乡","临寒独自开"],theAnswer:"为有暗香来")
        Question(text:"_____ ，万径人踪灭。",answerArray:["千山鸟飞绝","举头望明月","孤舟蓑笠翁","独钓寒江雪"],theAnswer:"千山鸟飞绝")
        Question(text:"《静夜思》的作者是谁？",answerArray:["李白","杜甫","白居易","王安石"],theAnswer:"李白")
        Question(text:"《长恨歌》的作者是谁？",answerArray:["李白","杜甫","白居易","王安石"],theAnswer:"白居易")
        Question(text:"《赤壁赋》的作者是谁？",answerArray:["苏轼","杜甫","白居易","王安石"],theAnswer:"苏轼")
        Question(text:"《九月九日忆山东兄弟》的作者是谁？",answerArray:["李白","杜甫","白居易","王维"],theAnswer:"王维")
        Question(text:"春风又_江南岸？",answerArray:["到","满","绿","过"],theAnswer:"绿")
    ]

    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer01: UIButton!
    @IBOutlet weak var answer02: UIButton!
    @IBOutlet weak var answer03: UIButton!
    @IBOutlet weak var answer04: UIButton!
    
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

