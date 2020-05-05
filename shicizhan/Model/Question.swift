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
    var correctAnswer:String
   
    init(text:String,answerArray:[String],theAnswer:String) {
        questionText = text
        answer = answerArray
        correctAnswer = theAnswer
    }
}

