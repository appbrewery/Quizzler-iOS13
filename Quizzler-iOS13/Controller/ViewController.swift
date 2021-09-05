//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabelUI: UILabel!
    @IBOutlet weak var progressBarUI: UIProgressView!
    @IBOutlet weak var trueButtonUI: UIButton!
    @IBOutlet weak var falseButtonUI: UIButton!
    @IBOutlet weak var scoreUI: UILabel!
    
    var quizBrain = QuizBrain()
    var scorePoint = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateUI() {
        questionLabelUI.text = self.quizBrain.getQuestiontext()
        trueButtonUI.backgroundColor = UIColor.clear
        falseButtonUI.backgroundColor = UIColor.clear
        self.progressBarUI.progress = self.quizBrain.getProgress()
        scoreUI.text = "Score: \(quizBrain.getScore())"
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
            
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.setNextQuestion()
        
        Timer.scheduledTimer(withTimeInterval: 0.25, repeats: false) { Timer in
            self.updateUI()
        }
    }
    
    
}

