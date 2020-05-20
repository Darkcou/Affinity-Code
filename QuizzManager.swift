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

final class QuizManager: ObservableObject {
    @Published var currentQuestion = Question(question: "", answer: Answer(text: ""), possibleAnswers: [])
    
    //Propriété qui suivent l'index d'une question et les questions déjà posées.
    private var questionsUsed = [Question]()
    
    var questionsAsked = 0
    var correctAnswers = 0
    
    //Arrays pour les questions et les réponses, la bonne réponse est séparé des possibles autres réponses(bonne réponse inclus)
    private var questionsVariable = [
        Question(question: "Quel est le mot clé pour déclarer une variable ?", answer: Answer(text: "var"), possibleAnswers: [Answer(text: "VAR"), Answer(text: "VaR"), Answer(text: "Var"), Answer(text: "var")]),
        
        Question(question: "Que faut-il mettre après le mot clé var?", answer: Answer(text: "Un nom"), possibleAnswers: [Answer(text: "Rien"), Answer(text: "Un symbole"), Answer(text: "Un chiffre"), Answer(text: "Un nom")]),
        
        Question(question: "Quel symbole mathématique assigne une valeur à une variable?", answer: Answer(text: "="), possibleAnswers: [Answer(text: "+"), Answer(text: "/"), Answer(text: "-"), Answer(text: "=")]),
        
        Question(question: "La valeur d'une variable peut-elle changer ?", answer: Answer(text: "Oui"), possibleAnswers: [Answer(text: "Non"), Answer(text: "Peut être"), Answer(text: "Ca dépends"), Answer(text: "Oui")])
        
    ]
    private var questionsStringInt = [
        
        Question(question: "Quel est le type pour du texte ?", answer: Answer(text: "String"), possibleAnswers: [Answer(text: "String"), Answer(text: "Sfring"), Answer(text: "Strong"), Answer(text: "Sting")]),
        
        Question(question: "Quel est le type pour les entiers ?", answer: Answer(text: "Int"), possibleAnswers: [Answer(text: "Ent"), Answer(text: "Int"), Answer(text: "Ents"), Answer(text: "Intg")]),
        
        Question(question: "Que signifie Int ?", answer: Answer(text: "Integer"), possibleAnswers: [Answer(text: "Integrer"), Answer(text: "Integration"), Answer(text: "Integer"), Answer(text: "Inting")]),
    ]
    
    private var questionsDoubleBool = [
    
    Question(question: "Qu'est qu'un double?", answer: Answer(text: "Un type comprenant des entiers et des décimals"), possibleAnswers: [Answer(text: "Un type comprenant des opérations mathématiques"), Answer(text: "Un type comprenant des formes géométriques"), Answer(text: "Un type comprenant des entiers et des décimals"), Answer(text: "Un type comprenant des puissances")]),
    
    Question(question: "A quoi sert un booléen?", answer: Answer(text: "A désigner un vrai ou faux"), possibleAnswers: [Answer(text: "A désigner une figure géométrique"), Answer(text: "A désigner un vrai ou faux"), Answer(text: "A désigner une variable spéciale "), Answer(text: "A désigner un double spécial")]),
    
    Question(question: "Parmi les réponses, laquelle fait référence à un Double ?", answer: Answer(text: "2.269"), possibleAnswers: [Answer(text: "2.269"), Answer(text: "10²"), Answer(text: "2%"), Answer(text: ">9")]),
    
    Question(question: "Quel est le mot clé pour un booléen ?", answer: Answer(text: "Bool"), possibleAnswers: [Answer(text: "Boule"), Answer(text: "Boole"), Answer(text: "Boul"), Answer(text: "Bool")])
    ]
    
    private var questionsMultiString = [
    
        Question(question: "A quoi sert le String multi-lignes ?", answer: Answer(text: "A écrire du texte sur plusieurs lignes"), possibleAnswers: [Answer(text: "A écrire davantage de texte"), Answer(text: "A écrire du texte avec des chiffres"), Answer(text: "A écrire")]),
        
    Question(question: "Combien de guillemets sont necessaires au début et à la fin d'un String multi-lignes ?", answer: Answer(text: "3"), possibleAnswers: [Answer(text: "1"), Answer(text: "2"), Answer(text: "3")]),
    
    Question(question: "A quoi sert le String multi-lignes ?", answer: Answer(text: "A écrire du texte sur plusieurs lignes"), possibleAnswers: [Answer(text: "A écrire davantage de texte"), Answer(text: "A écrire du texte avec des chiffres"), Answer(text: "A écrire")]),
    
    Question(question: "A quoi sert le String multi-lignes ?", answer: Answer(text: "A écrire du texte sur plusieurs lignes"), possibleAnswers: [Answer(text: "A écrire davantage de texte"), Answer(text: "A écrire du texte avec des chiffres"), Answer(text: "A écrire")])
    
    ]
    
    init() {
        getRandomQuestion()
    }
    
    //Fonction qui retourne une question aléatoire et vérifie si la question a été posée avant.
    func getRandomQuestion() {
        guard var randomQuestion = questionsVariable.shuffled().first else { return }
        guard var randomQuestion2 = questionsStringInt.shuffled().first else { return }
        
        if questionsUsed.isEmpty || !questionsUsed.contains(randomQuestion) {
            questionsUsed.append(randomQuestion)
            currentQuestion = randomQuestion
        } else {
            for question1 in questionsUsed {
                while randomQuestion == question1 {
                    randomQuestion = questionsVariable.shuffled().first!
                    questionsUsed.append(randomQuestion)
                    currentQuestion = randomQuestion
                }
            }
        }
        if questionsUsed.isEmpty || !questionsUsed.contains(randomQuestion) {
            questionsUsed.append(randomQuestion)
            currentQuestion = randomQuestion
        } else {
            for question2 in questionsUsed {
                while randomQuestion2 == question2 {
                    randomQuestion2 = questionsStringInt.shuffled().first!
                    questionsUsed.append(randomQuestion2)
                    currentQuestion = randomQuestion2
                }
            }
        }
        if questionsUsed.isEmpty || !questionsUsed.contains(randomQuestion) {
            questionsUsed.append(randomQuestion)
            currentQuestion = randomQuestion
        } else {
            for question3 in questionsUsed {
                while randomQuestion2 == question3 {
                    randomQuestion2 = questionsStringInt.shuffled().first!
                    questionsUsed.append(randomQuestion2)
                    currentQuestion = randomQuestion2
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
