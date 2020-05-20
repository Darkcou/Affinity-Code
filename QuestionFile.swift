//
//  QuestionFile.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 19/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation

struct Quizz {
    var id = UUID()
    var questions: String
    var answers : [String]
    
    init(questions: String, answers: [String]) {
        self.questions = questions
        self.answers = answers
    }
}

let quizzVariable = [
    
    Quizz(questions: "Quel est le mot clé pour déclarer une variable ?", answers: ["VAR", "Var", "VaR", "var"]),
    Quizz(questions: "Que faut-il mettre après le mot clé var?", answers: ["Rien", "Un nom", "Un symbole", "Un chiffre"]),
    Quizz(questions: "Quel symbole mathématique assigne une valeur à une variable?", answers: ["-", "+", "/", "="]),
    Quizz(questions: "La valeur d'une variable peut-elle changer ?", answers: ["Oui", "Non", "Peut être", "Ca dépends"])
]

let quizzStringInt = [
    
    Quizz(questions: "Quel est le type pour le texte ?", answers: ["VAR", "Var", "VaR", "var"]),
    Quizz(questions: "Quel est le type pour les entiers ?", answers: ["Int", "Ent", "Intg", "Ents"]),
    Quizz(questions: "Que signifie Int ?", answers: ["Integer", "Integrer", "Integration", "Inting"]),
    Quizz(questions: "Peut-on changer la valeur d'une variable de type String en type Int ?", answers: ["Oui", "Non", "Peut être", "Ca depends"])
    
    ]

let quizzMultiString = [
    
    Quizz(questions: "A quoi sert le String multi-lignes ?", answers: ["A écrire du texte sur plusieurs lignes", "A écrire davantage de texte", "A écrire", "4"]),
    Quizz(questions: "Combien de guillemets sont necessaires au début et à la fin d'un String multi-lignes ?", answers: ["1", "2", "3", "4"]),
    Quizz(questions: "Quel est le symbole permettant de revenir à la ligne dans un String multi-lignes ?", answers: ["$", "-", "/", ">"]),
    Quizz(questions: "Peut-on écrire du texte sur la même ligne que les guillemets ?", answers: ["Vrai", "Faux", "Peut être", "Ca dépends"])
    
    ]

let quizzDoubleBool = [
    
    Quizz(questions: "Qu'est qu'un double?", answers: ["un type pour les décimals", "un type pour les opérations mathématiques", "un type pour la géométrie", "un type pour les puissances"]),
    Quizz(questions: "A quoi sert un booléen?", answers: ["A désigner un vrai ou faux", "A désigner une figure géométrique", "A désigner une variable spéciale ", "A désigner un double spécial"]),
    Quizz(questions: "Parmi les réponses, laquelle fait référence à un Double ?", answers: ["10²", "2.679", ">2", "2%"]),
    Quizz(questions: "Quel est le mot clé pour un booléen ?", answers: ["boole", "boule", "bool", "boul"])
]

