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
    
    var questionArr: [Question] = []
    var currentIndex = 0
    var trueAnswerCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.questionArr = [Question(q: "A slug's blood is green.", a: "True"),
                            Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                            Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                            Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                            Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                            Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                            Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                            Question(q: "Google was originally called 'Backrub'.", a: "True"),
                            Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                            Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                            Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                            Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        ]
        setQuestion()
        continueProgressBar()
    }
    
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        if self.questionArr.count-1 == currentIndex {
            //questions ended
            questionLabelUI.text = String("Total true answer count is \(self.trueAnswerCount) of them \(self.questionArr.count) questions")
            return
        }
        //set nextQuestion
        if(sender.currentTitle == self.questionArr[currentIndex].a){
            self.trueAnswerCount = trueAnswerCount + 1
        }
        currentIndex = currentIndex + 1
        setQuestion()
        continueProgressBar()
    }
    
    func setQuestion() {
        questionLabelUI.text = self.questionArr[currentIndex].q
    }
    
    func continueProgressBar() {
        self.progressBarUI.progress =   (Float(self.currentIndex+1)/Float(self.questionArr.count))
    }
    
}

struct Question {
    var q: String
    var a: String
}
