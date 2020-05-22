//
//  ModelTheme.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 22/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation

enum ThemeType: String, CaseIterable {
    
    case cinema = "Cinema"
    case mode = "Mode"
    case musique = "Musique"
    case jeux = "Jeux"
}

struct Theme {
    var type:ThemeType
    var name: String
    var icon:String
    
    init(theme: ThemeType) {
        var themeSting = theme.rawValue
        self.name = themeSting
        self.type = theme
        
        switch themeSting  {
        case "Cinema":
            themeSting  = "cinema"
        case "Mode":
            themeSting = "mode"
        case "Jeux":
            themeSting = "game"
        default:
            themeSting = "music"
        }
        
        self.icon = themeSting
    }
}
