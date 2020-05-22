//
//  QuizzManager.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation
import GameKit
import Combine

final class QuizzManager: ObservableObject {
    @Published var currentQuestion = Question(type:.variables, question: "", answer: Answer(text: ""), possibleAnswers: [])
    
    //Propriété qui suivent l'index d'une question et les questions déjà posées.
    private var questionsUsed = [Question]()
    
    var questionsAsked = 0
    var correctAnswers = 0
    
    //Arrays pour les questions et les réponses, la bonne réponse est séparé des possibles autres réponses(bonne réponse inclus)
    private var questions = [
        Question(type:.variables, question: "Quel est le mot clé pour déclarer une variable ?", answer: Answer(text: "var"), possibleAnswers: [Answer(text: "VAR"), Answer(text: "VaR"), Answer(text: "Var"), Answer(text: "var")]),
        
        Question(type:.variables, question: "Que faut-il mettre après le mot clé var?", answer: Answer(text: "Un nom"), possibleAnswers: [Answer(text: "Rien"), Answer(text: "Un symbole"), Answer(text: "Un chiffre"), Answer(text: "Un nom")]),
        
        Question(type:.variables, question: "Quel symbole mathématique assigne une valeur à une variable?", answer: Answer(text: "="), possibleAnswers: [Answer(text: "+"), Answer(text: "/"), Answer(text: "-"), Answer(text: "=")]),
        
        Question(type:.variables, question: "La valeur d'une variable peut-elle changer ?", answer: Answer(text: "Oui"), possibleAnswers: [Answer(text: "Non"), Answer(text: "Peut être"), Answer(text: "Ca dépends"), Answer(text: "Oui")]),
        
        Question(type:.stringsEntiers, question: "Quel est le type pour du texte ?", answer: Answer(text: "String"), possibleAnswers: [Answer(text: "String"), Answer(text: "Sfring"), Answer(text: "Strong"), Answer(text: "Sting")]),
        
        Question(type:.stringsEntiers, question: "Quel est le type pour les entiers ?", answer: Answer(text: "Int"), possibleAnswers: [Answer(text: "Ent"), Answer(text: "Int"), Answer(text: "Ents"), Answer(text: "Intg")]),
        
        Question(type:.stringsEntiers, question: "Que signifie Int ?", answer: Answer(text: "Integer"), possibleAnswers: [Answer(text: "Integrer"), Answer(text: "Integration"), Answer(text: "Integer"), Answer(text: "Inting")]),
        
        Question(type:.stringsEntiers, question: "Qu'est qu'un double?", answer: Answer(text: "Un type comprenant des entiers et des décimals"), possibleAnswers: [Answer(text: "Un type comprenant des opérations mathématiques"), Answer(text: "Un type comprenant des formes géométriques"), Answer(text: "Un type comprenant des entiers et des décimals"), Answer(text: "Un type comprenant des puissances")]),
        
        Question(type:.doublesBooléens, question: "A quoi sert un booléen?", answer: Answer(text: "A désigner un vrai ou faux"), possibleAnswers: [Answer(text: "A désigner une figure géométrique"), Answer(text: "A désigner un vrai ou faux"), Answer(text: "A désigner une variable spéciale "), Answer(text: "A désigner un double spécial")]),
        
        Question(type:.doublesBooléens, question: "Parmi les réponses, laquelle fait référence à un Double ?", answer: Answer(text: "2.269"), possibleAnswers: [Answer(text: "2.269"), Answer(text: "10²"), Answer(text: "2%"), Answer(text: ">9")]),
        
        Question(type:.doublesBooléens, question: "Quel est le mot clé pour un booléen ?", answer: Answer(text: "Bool"), possibleAnswers: [Answer(text: "Boule"), Answer(text: "Boole"), Answer(text: "Boul"), Answer(text: "Bool")]),
        
        Question(type:.stringsMulti, question: "A quoi sert le String multi-lignes ?", answer: Answer(text: "A écrire du texte sur plusieurs lignes"), possibleAnswers: [Answer(text: "A écrire davantage de texte"), Answer(text: "A écrire du texte avec des chiffres"), Answer(text: "A écrire"), Answer(text: "A écrire du texte sur plusieurs lignes")]),
        
        Question(type:.stringsMulti, question: "Combien de guillemets sont necessaires au début et à la fin d'un String multi-lignes ?", answer: Answer(text: "3"), possibleAnswers: [Answer(text: "1"), Answer(text: "2"), Answer(text: "3"), Answer(text: "4")]),
        
        Question(type:.stringsMulti, question: "Quel est le symbole permettant de revenir à la ligne dans un String multi-lignes ?", answer: Answer(text: "/"), possibleAnswers: [Answer(text: "-"), Answer(text: ">"), Answer(text: "*"), Answer(text: "/")]),
        
        Question(type:.stringsMulti, question: "Peut-on écrire du texte sur la même ligne que les guillemets ?", answer: Answer(text: "Non"), possibleAnswers: [Answer(text: "Oui"), Answer(text: "Non"), Answer(text: "Peut être"), Answer(text: "Ca dépends")])
        
    ]
    
    func filtreQuestions(activity:String) -> [Question] {
        var myQuestion:[Question] = []
        for question in questions{
            if question.getType() == activity{
                myQuestion.append(question)
            }
        }
        return myQuestion
    }
    
    init(activity:String) {
        getRandomQuestion(activity:activity)
    }
    
    //Fonction qui retourne une question aléatoire et vérifie si la question a été posée avant.
    func getRandomQuestion(activity:String) {
        guard var randomQuestion = filtreQuestions(activity: activity).shuffled().first else { return }
        
        if questionsUsed.isEmpty || !questionsUsed.contains(randomQuestion) {
            questionsUsed.append(randomQuestion)
            currentQuestion = randomQuestion
        } else {
            for question in questionsUsed {
                while randomQuestion == question {
                    randomQuestion = filtreQuestions(activity: activity).shuffled().first!
                    questionsUsed.append(randomQuestion)
                    currentQuestion = randomQuestion
                }
            }
        }
    }
    
    //Fonction qui vérifie la réponse de l'utilisateur
    func checkAnswer(_ answer: Answer, to question: Question) -> Bool {
        questionsAsked += 1
        
        if answer.text == question.answer.text {
            correctAnswers += 1
        }
        
        return answer.text == question.answer.text
    }
}
