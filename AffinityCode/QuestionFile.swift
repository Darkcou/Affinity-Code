//
//  QuestionFile.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 19/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation


struct Quizz {
    var questions: String
    var answers: [String]

}

let allQuizz = [

    Quizz(questions: "Quel est le mot clé pour déclarer une variable ?", answers: ["VAR", "Var", "VaR", "var"]),
    Quizz(questions: "Quel signe mathématique utilise-t-on pour assigner une valeur à une variable ?", answers: ["->", "=", "(", "{"]),
    Quizz(questions: "Quel est le type utilisé pour du texte?", answers: ["Sfring", "String", "Strang", "Sring"]),
    Quizz(questions: "Quel est le type utilisé pour les entiers?", answers: ["Int", "Ent", "Intg", "Ents"]),
    Quizz(questions: "Combien de guillemets doit-on mettre au début et à la fin d'un string multi-lignes ?" , answers: ["Un","Deux", "Trois", "Quatre"]),
    Quizz(questions: "Quel signe doit-on utiliser pour  ?" , answers: ["Un","Deux", "Trois", "Quatre"])
]
