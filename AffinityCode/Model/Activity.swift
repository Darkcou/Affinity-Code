//
//  ModelActivity.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 22/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation
 
enum Activity : String, CaseIterable {
    
    case variables
    case stringsEntiers
    case doublesBooléens
    case stringsMulti 
    
    var name: String {
        switch self {
        case .variables:
            return "Variables"
        case .stringsEntiers:
            return "Strings et entiers"
        case .doublesBooléens:
            return "Doubles et booléens"
        case .stringsMulti:
            return "Strings Multi-lignes"
        }
    }
    
    var contient: String {
        switch self {
        case .variables:
            return "Les variables sont une sorte de boîte où l'on peut stocker des données. Et l'on peut modifier ces données. Pour déclarer une variable, on utilise le mot clé 'var' suivi d'un nom. On peut utiliser n'importe quel nom."
        case .stringsEntiers:
            return "Chaque donnée a un type. Le texte est de type String, il doit être entre guillemets pour le signifier. Les entiers sont de type Int, il n'y a pas besoin de les mettre entre guillemets. On ne peut pas changer une variable de type String en Int."
        case .doublesBooléens:
            return "Les décimals sont de type Double, on peut aussi y inclure des entiers. Lorsqu'on veut signifier une situation vrai ou fausse, on utilise le type Bool."
        case .stringsMulti:
            return "Les Strings multi-lignes sont de simples Strings mais échelonnés sur plusieurs lignes. Pour les déclarer, on utilise 3 guillements au début et à la fin d'un String."
        }
    }
}

