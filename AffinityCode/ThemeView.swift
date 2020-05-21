//
//  ThemeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 19/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ThemeView: View {
    @Binding var globalThemeBinding: String
    var localTheme: String = "Musique"
    var icone: String = "music"
    var gradientTheme : Gradient = GradientData.gradientPurple
    
    var body: some View {
        VStack {
            Text("Personnalisez vos exemples:").foregroundColor(Color.white).font(.system(size: 25))
        HStack {
            ButtonThemeView(globalThemeBinding: $globalThemeBinding, localTheme: "Musique", icone: "music", gradientTheme: GradientData.gradientPurple).padding(8)
            ButtonThemeView(globalThemeBinding: $globalThemeBinding, localTheme: "Mode", icone: "mode", gradientTheme: GradientData.gradientBlue).padding(8)
            ButtonThemeView(globalThemeBinding: $globalThemeBinding, localTheme: "Jeux", icone: "game", gradientTheme: GradientData.myYellow).padding(8)
            ButtonThemeView(globalThemeBinding: $globalThemeBinding, localTheme: "Cinéma", icone: "cinema", gradientTheme: GradientData.gradientGreen).padding(8)
            }
        }
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(globalThemeBinding: .constant("music"))
    }
}
