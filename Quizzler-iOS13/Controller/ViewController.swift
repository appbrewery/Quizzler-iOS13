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
    @IBOutlet weak var choose1ButtonUI: UIButton!
    @IBOutlet weak var choose2ButtonUI: UIButton!
    @IBOutlet weak var choose3ButtonUI: UIButton!
    @IBOutlet weak var scoreUI: UILabel!
    
    var quizBrain = QuizBrain()
    var scorePoint = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if self.quizBrain.quizIsMultiple {
            choose3ButtonUI.isHidden = false
            setMultipleChooseAnswerTitles()
        } else {
            choose1ButtonUI.titleLabel?.text = "True"
            choose2ButtonUI.titleLabel?.text = "False"
            choose3ButtonUI.isHidden = true
        }
        updateUI()
    }
    
    func updateUI() {
        if self.quizBrain.quizIsMultiple {
            questionLabelUI.text = self.quizBrain.getQuestiontext()
            
            choose1ButtonUI.backgroundColor = UIColor.clear
            choose2ButtonUI.backgroundColor = UIColor.clear
            choose3ButtonUI.backgroundColor = UIColor.clear
            self.setMultipleChooseAnswerTitles()
            self.progressBarUI.progress = self.quizBrain.getProgress()
            scoreUI.text = "Score: \(quizBrain.getScore())"
        } else {
            questionLabelUI.text = self.quizBrain.getQuestiontext()
            choose1ButtonUI.backgroundColor = UIColor.clear
            choose2ButtonUI.backgroundColor = UIColor.clear
            self.progressBarUI.progress = self.quizBrain.getProgress()
            scoreUI.text = "Score: \(quizBrain.getScore())"
        }
    }
    
    func setMultipleChooseAnswerTitles() {
        let answerArray = self.quizBrain.getAnswerTexts()
        self.choose1ButtonUI.titleLabel?.text = answerArray[0]
        self.choose2ButtonUI.titleLabel?.text = answerArray[1]
        self.choose3ButtonUI.titleLabel?.text = answerArray[2]
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

