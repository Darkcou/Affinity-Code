//
//  LessonsContent.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation

struct Lesson {
    var id = UUID()
    var lesson: String
    var theme: ThemeView
}

enum allLessons: String {
    case variable = "Les variables sont une sorte de boîte où l'on peut stocker des données. Et l'on peut modifier ces données. Pour déclarer une variable, on utilise le mot clé 'var' suivi d'un nom. On peut utiliser n'importe quel nom."
    case stringInt = "Chaque donnée a un type. Le texte est de type String, il doit être entre guillemets pour le signifier. Les entiers sont de type Int, il n'y a pas besoin de les mettre entre guillemets. On ne peut pas changer une variable de type String en Int."
    case doubleBool = "Les décimals sont de type Double, on peut aussi y inclure des entiers. Lorsqu'on veut signifier une situation vrai ou fausse, on utilise le type Bool."
    case stringMulti = "Les Strings multi-lignes sont de simples Strings mais échelonnés sur plusieurs lignes. Pour les déclarer, on utilise 3 guillements au début et à la fin d'un String."
}
