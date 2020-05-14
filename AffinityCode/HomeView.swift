//
//  HomeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var globalTheme : String = "Musique"
    
    func listRoom()-> some View {
        var homeButton : LessonsView
        switch globalTheme {
        case "Mode":
            homeButton = LessonsView(globalLessonBinding: $globalTheme, localLessonTheme: globalTheme, gradientBar: GradientData.gradientBlue)

        case "Jeux":
            homeButton = LessonsView(globalLessonBinding: $globalTheme, localLessonTheme: globalTheme, gradientBar: GradientData.myYellow)

        case "Cinéma":
            homeButton = LessonsView(globalLessonBinding: $globalTheme, localLessonTheme: globalTheme, gradientBar: GradientData.gradientGreen)

        default:
            homeButton = LessonsView(globalLessonBinding: $globalTheme, localLessonTheme: globalTheme, gradientBar: GradientData.gradientPurple)
        }
        return VStack {
            homeButton
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cours de Swift").foregroundColor(Color.white).font(.system(size: 60)).padding()
                Text("Personnalisez vos exemples:").foregroundColor(Color.white).font(.system(size: 25))
                HStack {
                    ButtonThemeView(globalThemeBinding: $globalTheme, localTheme: "Musique", icone: "music", gradientTheme: GradientData.gradientPurple).padding(8)
                    ButtonThemeView(globalThemeBinding: $globalTheme, localTheme: "Mode", icone: "mode", gradientTheme: GradientData.gradientBlue).padding(8)
                    ButtonThemeView(globalThemeBinding: $globalTheme, localTheme: "Jeux", icone: "game", gradientTheme: GradientData.myYellow).padding(8)
                    ButtonThemeView(globalThemeBinding: $globalTheme, localTheme: "Cinéma", icone: "cinema", gradientTheme: GradientData.gradientGreen).padding(8)
                }
            
                listRoom()

            }
            }
        }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
