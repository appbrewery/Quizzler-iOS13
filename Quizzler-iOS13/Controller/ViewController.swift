//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
	@IBOutlet weak var questionLabel: UILabel?

	@IBOutlet weak var progressBar: UIProgressView?

	@IBOutlet weak var trueButton: UIButton?

	@IBOutlet weak var falseButton: UIButton?

	var quizBrain = QuizBrain()

	override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		updateUI()
    }

	@IBAction func answerButtonPressed(_ sender: UIButton) {
		let userAnswer = sender.currentTitle!
		let userGotItRight = quizBrain.checkAnswer(userAnswer)
		if userGotItRight {
			sender.backgroundColor = .green
		} else {
			sender.backgroundColor = .red
		}
		Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { [self] timer in
			quizBrain.nextQuestion()
			updateUI()
		}
	}

	func updateUI() {
		trueButton?.backgroundColor = .clear
		falseButton?.backgroundColor = .clear
		questionLabel?.text = quizBrain.getQuestionText()
		progressBar?.progress = quizBrain.getProgress()
	}

}

