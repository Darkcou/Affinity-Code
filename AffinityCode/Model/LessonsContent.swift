//
//  LessonsContent.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation
import SwiftUI

enum ThemeType : CaseIterable {
    case music
    case mode
    case game
    case cinema
    
    var gradient: Gradient {
        switch self {
        case .music:
            return GradientData.gradientPurple
        case .mode:
            return GradientData.gradientBlue
        case .game:
            return GradientData.myYellow
        case .cinema:
            return GradientData.gradientGreen
        }
    }
    var name: String {
        switch self {
        case .music:
            return "Musique"
        case .mode:
            return "Mode"
        case .game:
            return "Jeux"
        case .cinema:
            return "Cinéma"
        }
    }
    var imageName: String {
        switch self {
        case .music:
            return "music"
        case .mode:
            return "mode"
        case .game:
            return "game"
        case .cinema:
            return "cinema"
        }
    }
    var exempleImage: String {
        switch self {
        case .music:
            return "radio"
        case .mode:
            return "clothes"
        case .game:
            return "nintendo"
        case .cinema:
            return "hall"
        }
    }
    var exempleImage2: String {
        switch self {
        case .music:
            return "jackson"
        case .mode:
            return "robe"
        case .game:
            return "mario"
        case .cinema:
            return "hat"
        }
    }
    var exempleName: String {
        switch self {
        case .music:
            return "Radio"
        case .mode:
            return "Dressing"
        case .game:
            return "Switch"
        case .cinema:
            return "Salle de Cinéma"
        }
    }
    var exempleName2: String {
        switch self {
        case .music:
            return "Michal Jackson"
        case .mode:
            return "Robe"
        case .game:
            return "Mario"
        case .cinema:
            return "Le Parrain"
        }
    }
}

/*enum LessonContent : String, CaseIterable {
 case variables = "Variables"
 case stringsEntiers = "Strings et Entiers"
 case doublesBooléens = "Doubles et booléens"
 case stringsMulti = "Strings multi-lignes"
 
 var lessonTitle: String {
 switch self {
 case .variables:
 return "Variables"
 case .stringsEntiers:
 return "Strings et entiers"
 case .doublesBooléens:
 return "Doubles et booléens"
 case .stringsMulti:
 return "Strings multi-lignes"
 }
 }
 var lessonContent: String {
 switch self {
 case .variables:
 return "Les variables sont une sorte de boîte où l'on peut stocker des données. Et l'on peut modifier ces données. Pour déclarer une variable, on utilise le mot clé 'var' suivi d'un nom. On peut utiliser n'importe quel nom."
 case .stringsEntiers:
 return "Cours 2"
 case .doublesBooléens:
 return "Cours 3"
 case .stringsMulti:
 return "Cours 4"
 }
 }
 }
 */
struct Lesson : Hashable {
    var lessonTitle: String
    var content: String
    
    static let allLessons : [Lesson] =
        [Lesson.init(lessonTitle: "Variables", content: "Les variables sont une sorte de boîte où l'on peut stocker des données. Et l'on peut modifier ces données. Pour déclarer une variable, on utilise le mot clé 'var' suivi d'un nom. On peut utiliser n'importe quel nom."),
         
         Lesson.init(lessonTitle: "Strings et entiers", content: "Chaque donnée a un type. Le texte est de type String, il doit être entre guillemets pour le signifier. Les entiers sont de type Int, il n'y a pas besoin de les mettre entre guillemets. On ne peut pas changer une variable de type String en Int."),
         
         Lesson.init(lessonTitle: "Doubles et Booléens", content: "Les décimals sont de type Double, on peut aussi y inclure des entiers. Lorsqu'on veut signifier une situation vrai ou fausse, on utilise le type Bool."),
         
         Lesson.init(lessonTitle: "Strings multi-lignes", content: "Les Strings multi-lignes sont de simples Strings mais échelonnés sur plusieurs lignes. Pour les déclarer, on utilise 3 guillements au début et à la fin d'un String.")]
}

struct Example {
    var exampleName : [String]
    var exampleImage : [String]
}

/*func getTitleString() -> String {
 return self.title.rawValue
 }
 }
 
 enum allLessons: String {
 case variable = "Les variables sont une sorte de boîte où l'on peut stocker des données. Et l'on peut modifier ces données. Pour déclarer une variable, on utilise le mot clé 'var' suivi d'un nom. On peut utiliser n'importe quel nom."
 case stringInt = "Chaque donnée a un type. Le texte est de type String, il doit être entre guillemets pour le signifier. Les entiers sont de type Int, il n'y a pas besoin de les mettre entre guillemets. On ne peut pas changer une variable de type String en Int."
 case doubleBool = "Les décimals sont de type Double, on peut aussi y inclure des entiers. Lorsqu'on veut signifier une situation vrai ou fausse, on utilise le type Bool."
 case stringMulti = "Les Strings multi-lignes sont de simples Strings mais échelonnés sur plusieurs lignes. Pour les déclarer, on utilise 3 guillements au début et à la fin d'un String."
 } */

