//
//  ViewController.swift
//  shicizhan
//
//  Created by 程航 on 2020/5/5.
//  Copyright © 2020 chenghang. All rights reserved.
//

import UIKit
//引入视频音频基础套餐
import AVFoundation

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
    var player:AVAudioPlayer!//创建一个播放器（类似于CD机）
    let sounds = ["note1","note2"]//全局变量
    var rightAnswer:Int! //正确答案
    var questionNum = 0
    
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
        setQuestion(index:questionNum)
    }

    @IBAction func answerPressed(_ sender: UIButton){
      
        if sender.tag == rightAnswer{
            print("回答正确")
            play(tag:1)//调用函数
        }else{
            print("回答错误")
            play(tag:2)//调用函数
        }
        
        questionNum = questionNum + 1
        if(questionNum >= 10){
            backToBegin()
        }else{
            setQuestion(index:questionNum)
        }
    }
    
    //回答完，显示弹框，回到第一个问题
    func backToBegin(){
        questionNum = 0
        let alert = UIAlertController(title: "极好", message: "已完成所有题目", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("再次做题", comment: "Default action"), style: .default, handler: { _ in
            self.setQuestion(index:0)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    //题目和答案内容赋值
    func setQuestion(index:Int){
        questionLabel.text = questions[index].questionText
        rightAnswer = questions[index].correctAnswer
        answer01.setTitle(questions[index].answer[0], for: .normal)
        answer02.setTitle(questions[index].answer[1], for: .normal)
        answer03.setTitle(questions[index].answer[2], for: .normal)
        answer04.setTitle(questions[index].answer[3], for: .normal)
    }
    
    //创建一个发出声音的功能函数
    func play(tag: Int){
      //找到音频文件（类似于拿出一张CD光盘）-局部变量
      let url = Bundle.main.url(forResource: sounds[tag-1], withExtension: "wav")
      
      do{
          player = try AVAudioPlayer(contentsOf: url!)//在CD机里面放入CD光盘
          player.play()//按下播放按钮
      }catch{
          print(error)//放入的CD光盘可能有损坏导致CD机读不出来，我们需要用docatch来捕捉可能的错误，防止App闪退
      }
    }
}

