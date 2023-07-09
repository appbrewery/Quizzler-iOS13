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
    
    var quizArray = [
        ["Three + Five is equal to eight", "True"],
        ["Four + Two is equal to six", "True"],
        ["Five - Three is greater than one", "True"],
        ["Three + Eight is less than ten", "False"]
    ]
    
    var questionNumber = 0
    var totalQuestions = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let correctAnswer = quizArray[questionNumber][1]
        
        if userAnswer == correctAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        if questionNumber + 1 < quizArray.count {
            questionNumber += 1
        }
        updateUI()
    }
        
        func updateUI() {
            questionLabel.text = quizArray[questionNumber][0]
        }
    }
