//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Tarık Nasuhoğlu on 5.09.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var q: String
    var a: String
}

struct QuestionMultiple {
    var q: String
    var a: [String]
    var correctAnswer: String
}
