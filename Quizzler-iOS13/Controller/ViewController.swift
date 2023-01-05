//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!

    @IBOutlet weak var progressbar: UIProgressView!
    

    
    var quizBrain=QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButtonPressed(_ sender: Any) {
        
        let userAnswer=(sender as AnyObject).currentTitle! ?? "0"
        let userGotItRight=quizBrain.checkAnswer(userAnswer)   //Using the property of QuizBrain method and userAnswer is a internal parameter name
        
        
        if userGotItRight{
            trueButton.backgroundColor=UIColor.green
        }
        else{
            falseButton.backgroundColor=UIColor.red
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:#selector(updateUI), userInfo: nil, repeats: false)
        
    }
    @objc func updateUI(){
        questionLabel.text=quizBrain.getQuestionText()
        progressbar.progress=quizBrain.getProgress()
        scoreLabel.text="Score: \(quizBrain.getScore())"
        trueButton.backgroundColor=UIColor.clear
        falseButton.backgroundColor=UIColor.clear
        
    }
    
    
}

