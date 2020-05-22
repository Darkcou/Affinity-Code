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
}

enum Activity : String, CaseIterable {
    case variables = "Variables"
    case stringsEntiers = "Strings et entiers"
    case doublesBooléens = "Doubles et booléens"
    case stringsMulti = "Strings Multi-lignes"
}

struct Lesson {
    var title: Activity
    var content: String
    var type : ThemeType
    
    func getTitleString() -> String {
        return self.title.rawValue
    }
    static let allLessons : [Lesson] = [Lesson.init(title: Activity.variables, content: "Cours 1", type: .music),
                                        Lesson.init(title: Activity.stringsEntiers, content: "Cours 2", type: .music),
                                        Lesson.init(title: .doublesBooléens, content: "Cours 3", type: .music),
                                        Lesson.init(title: Activity.stringsMulti, content: "Cours 4", type: .music)]
}

enum allLessons: String {
    case variable = "Les variables sont une sorte de boîte où l'on peut stocker des données. Et l'on peut modifier ces données. Pour déclarer une variable, on utilise le mot clé 'var' suivi d'un nom. On peut utiliser n'importe quel nom."
    case stringInt = "Chaque donnée a un type. Le texte est de type String, il doit être entre guillemets pour le signifier. Les entiers sont de type Int, il n'y a pas besoin de les mettre entre guillemets. On ne peut pas changer une variable de type String en Int."
    case doubleBool = "Les décimals sont de type Double, on peut aussi y inclure des entiers. Lorsqu'on veut signifier une situation vrai ou fausse, on utilise le type Bool."
    case stringMulti = "Les Strings multi-lignes sont de simples Strings mais échelonnés sur plusieurs lignes. Pour les déclarer, on utilise 3 guillements au début et à la fin d'un String."
}
