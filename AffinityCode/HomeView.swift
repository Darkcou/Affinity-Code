//
//  HomeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct HomeView: View {
 @State var globalTheme : String = "music"
     
     var body: some View {
         ZStack {
             Color(.black)
                 .edgesIgnoringSafeArea(.all)
         VStack {
         HStack {
             ButtonThemeView(globalThemeBinding: $globalTheme, localTheme: "music", icone: "heart.fill", gradientTheme: GradientData.gradientPurple)
             ButtonThemeView(globalThemeBinding: $globalTheme, localTheme: "mode", icone: "triangle.fill", gradientTheme: GradientData.gradientBlue)
             ButtonThemeView(globalThemeBinding: $globalTheme, localTheme: "jeux", icone: "circle.fill", gradientTheme: GradientData.gradientSun)
             ButtonThemeView(globalThemeBinding: $globalTheme, localTheme: "cinéma", icone: "star.fill", gradientTheme: GradientData.gradientGreen)
         }
             HomeButtonView(globalLessonBinding: $globalTheme, localLessonTheme: "music", lessonName: "Variables", gradientBar: GradientData.gradientPurple)
             HomeButtonView(globalLessonBinding: $globalTheme, localLessonTheme: "mode", lessonName: "Strings et entiers", gradientBar: GradientData.gradientBlue)
             HomeButtonView(globalLessonBinding: $globalTheme, localLessonTheme: "jeux", lessonName: "Doubles et booléens", gradientBar: GradientData.gradientSun)
             HomeButtonView(globalLessonBinding: $globalTheme, localLessonTheme: "cinéma", lessonName: "Strings multi-lignes", gradientBar: GradientData.gradientGreen)
             
         }
         }
     }
 }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
