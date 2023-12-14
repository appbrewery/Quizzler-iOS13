//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six", "True"],
        ["Four - Two is equal to Two", "True"],
        ["Four * Two is equal to Five", "False"]
    ]
    
    var questionNumber = 0
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle  // true or false
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("False")
        }
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            
        } else {
            questionNumber = 0
        }
        
        updateUI()
        
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

