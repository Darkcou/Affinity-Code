//
//  ModelTheme.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 22/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation
import SwiftUI

enum ThemeType: CaseIterable {
    
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

struct Theme {
    var type:ThemeType
    var name: String
    var icon:String
    
    init(theme: ThemeType) {
        self.name = theme.name
        self.type = theme
        self.icon = theme.imageName
    }
}
