//
//  Question.swift
//  shicizhan
//
//  Created by 程航 on 2020/5/5.
//  Copyright © 2020 chenghang. All rights reserved.
//

import Foundation

class Question{
    
    var questionText:String
    var answer:[String]
    var correctAnswer:Int
   
    init(text:String,answerArray:[String],theAnswer:Int) {
        questionText = text
        answer = answerArray
        correctAnswer = theAnswer
    }
}

