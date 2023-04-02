//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Jiawei Chen on 3/27/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
    
}
