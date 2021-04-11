//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let quiz = ["Four","Five","Eight","Run"]
    var selectedQuestion = -1
    
    @IBOutlet weak var questionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }
    @IBAction func trueButtonAction(_ sender: Any) {
        updateUI(isNext: true)
    }
    
    @IBAction func falseButtonAction(_ sender: Any) {
        
        updateUI(isNext: false)
        
    }
    
    func updateUI(isNext : Bool) {
        
        if isNext && selectedQuestion < quiz.count {
            selectedQuestion += 1
            questionText.text = quiz[selectedQuestion]
        } else {
            if 0 < selectedQuestion && selectedQuestion < quiz.count {
                selectedQuestion -= 1
                questionText.text = quiz[selectedQuestion]
            }
        }
    
    }
}

