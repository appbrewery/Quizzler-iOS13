//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Leole Nkhatho on 2021/12/18.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    let q: String
    let a: String
    
    init(q: String, a: String) {
        self.q = q
        self.a = a
    }
}
