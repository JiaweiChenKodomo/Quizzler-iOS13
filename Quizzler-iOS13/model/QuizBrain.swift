//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Jiawei Chen on 3/27/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let questions = [
        Question(text: "4 + 2 == 6", answer: "True"),
        Question(text: "5 - 3 > 1", answer: "True"),
        Question(text: "3 + 8 < 10", answer: "False")
    ]
    
    var questionNumber = 0
    
    var score = 0
    
    mutating func checkAnswer(_ answer : String) -> Bool {
        
        if answer == questions[questionNumber].answer {
            score += 1
            return true
        } else {
            score -= 1
            return false
        }
    }
    
    func getQuestionText() -> String {
        return self.questions[self.questionNumber].text
            
    }
    
    func getProgress() -> Float {
        return Float(self.questionNumber + 1) / Float(self.questions.count)
    }
    
    mutating func getNext() {
        
        if self.questionNumber < (self.questions.count - 1) {
            self.questionNumber += 1
            
        } else {
            self.questionNumber = 0
            self.score = 0
        }
        
    }
    
    func getScore() -> Int {
        return self.score
    }
    
    
}
