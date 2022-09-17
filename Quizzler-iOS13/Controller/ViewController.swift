//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelPuntaje: UILabel!
    @IBOutlet weak var labelPregunta: UILabel!
    @IBOutlet weak var barraProgreso: UIProgressView!
    @IBOutlet weak var botonTrue: UIButton!
    @IBOutlet weak var botonFalse: UIButton!
    var quizBrain = QuizBrain()
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cambiarPregunta()
    }


    @IBAction func botonRespuestaApretado(_ sender: UIButton) {
        let respuesta = sender.currentTitle!
        let respuestaCorrecta = quizBrain.verificarRespuesta(respuesta: respuesta)
        if respuestaCorrecta {
            quizBrain.aumentarPuntaje()
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.siguientePregunta()

        timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false, block: { (time) in
            self.cambiarPregunta()
        })

        
        

    }
    
    
    func cambiarPregunta(){
        
        labelPregunta.text = quizBrain.getTextoPregunta()
        barraProgreso.progress =  quizBrain.getProgreso()
        labelPuntaje.text = "Puntaje: \(quizBrain.getPuntaje())"
        botonTrue.backgroundColor = UIColor.clear
        botonFalse.backgroundColor = UIColor.clear
        
    }
}

