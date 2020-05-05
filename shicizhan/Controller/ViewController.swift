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
        Question(text:"窗前明月光，_____ 。",answerArray:["疑是地上霜","举头望明月2","低头思故乡3","清泉石上流4"],theAnswer:1),
        Question(text:"锄禾日当午，_____ 。",answerArray:["谁知盘中餐","粒粒皆辛苦","汗滴禾下土","清泉石上流"],theAnswer:3),
        Question(text:"离离原上草，_____ 。",answerArray:["野火烧不尽","一岁一枯荣","低头思故乡","春风吹又生"],theAnswer:2),
        Question(text:"遥知不是雪，_____ 。",answerArray:["墙角数枝梅","为有暗香来","低头思故乡","临寒独自开"],theAnswer:2),
        Question(text:"_____ ，万径人踪灭。",answerArray:["千山鸟飞绝","举头望明月","孤舟蓑笠翁","独钓寒江雪"],theAnswer:1),
        Question(text:"《静夜思》的作者是谁？",answerArray:["李白","杜甫","白居易","王安石"],theAnswer:1),
        Question(text:"《长恨歌》的作者是谁？",answerArray:["李白","杜甫","白居易","王安石"],theAnswer:3),
        Question(text:"《赤壁赋》的作者是谁？",answerArray:["苏轼","杜甫","白居易","王安石"],theAnswer:1),
        Question(text:"《九月九日忆山东兄弟》的作者是谁？",answerArray:["李白","杜甫","白居易","王维"],theAnswer:4),
        Question(text:"春风又_江南岸？",answerArray:["到","满","绿","过"],theAnswer:3)
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
        
        questionLabel.text = questions[0].questionText
        
        answer01.setTitle(questions[0].answer[0], for: .normal)
        answer02.setTitle(questions[0].answer[1], for: .normal)
        answer03.setTitle(questions[0].answer[2], for: .normal)
        answer04.setTitle(questions[0].answer[3], for: .normal)
    }

    @IBAction func answerPressed(_ sender: UIButton){
        print(sender.tag)
        print(questions[0].correctAnswer)
        let rightAnswer = questions[0].correctAnswer
        
        if sender.tag == rightAnswer{
            print("回答正确")
        }else{
            print("回答错误")
        }
        
    }
}

