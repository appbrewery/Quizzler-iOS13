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
    
    let quiz = [
        "You are going to be Java 11 OCP certified by 8 July 2022",
        "You are going to master IOS develpment by 8 July 2022",
        "You are going to master JavaScript and NodeJS by 8 July 2022"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz.randomElement()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
    
}

