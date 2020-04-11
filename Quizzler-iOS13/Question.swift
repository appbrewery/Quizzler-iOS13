//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Harshana Rathnamalala on 4/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(_ question : String, _ answer : String) {
        self.question = question
        self.answer = answer
    }
}
