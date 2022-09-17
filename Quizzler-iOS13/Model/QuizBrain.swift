//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Pablo Pizarro on 15/09/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct QuizBrain{
    let preguntas = [ Pregunta(q: "A slug's blood is green.", a: "True"),
                Pregunta(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                Pregunta(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                Pregunta(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                Pregunta(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                Pregunta(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                Pregunta(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                Pregunta(q: "Google was originally called 'Backrub'.", a: "True"),
                Pregunta(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                Pregunta(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                Pregunta(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                Pregunta(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")

    ]
    
    
    
    
    var preguntaActual = 0
    var puntaje = 0
    
    
    func verificarRespuesta(respuesta: String) -> Bool{
        if respuesta == preguntas[preguntaActual].a{
            return true
        } else {
            return false
            
    }
    }

    
    func getTextoPregunta() -> String{
        return preguntas[preguntaActual].q
    }
    
    func getProgreso() -> Float{
        return Float(preguntaActual) / Float(preguntas.count - 1)
    }
    
    //mutating para poder cambiar un variable del struct
   mutating func siguientePregunta(){
        if preguntaActual < preguntas.count - 1{
            preguntaActual += 1
        } else {
            puntaje = 0
            preguntaActual = 0
        }
    }
    
    mutating func aumentarPuntaje(){
        self.puntaje += 1
    }
    
    func getPuntaje() -> Int{
        return self.puntaje
    }
}
