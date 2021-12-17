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
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    var questionNumber = 0
    
    let quiz = [
        ["You are going to be Java 11 OCP certified by 8 July 2022!", "True"],
        ["You are going to master IOS develpment by 8 July 2022!", "True"],
        ["You are going to master JavaScript and NodeJS by 8 July 2022!", "True"],
        ["Are you going to be a Therapist in the next few minutes?", "False"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer: String = sender.currentTitle!
        let actualAnswer: String = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Correct")
        } else {
            print("Incorrect")
        }
        
        if questionNumber == quiz.count - 1 {
            questionNumber = 0
        } else {
            questionNumber += 1
        }
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0 ]
    }
    
}

