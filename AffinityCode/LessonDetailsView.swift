//
//  LessonDetailsView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonDetailsView: View {
    
    @Binding var globalThemeBinding: String
    var localTheme: String = "Musique"
    var icone: String = "music"
    @State var gradientTheme : Gradient = GradientData.gradientPurple
    
    @State var lessonName = "Variables"
    @State var lesson = allLessons.self
    @State var themeImageExamples = "music"
    @State var themeExample = "Jukebox"
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        VStack {
        ThemeView(globalThemeBinding: $globalThemeBinding, localTheme: localTheme, icone: icone, gradientTheme: gradientTheme)
            
            LessonContentView(lessonName: $lessonName, lesson: lesson.variable)
            ExamplesView(themeImageExamples: $themeImageExamples, themeExample: $themeExample, themeGradient: gradientTheme)
            ChallengeButtonLessonDetails(buttonColor: $gradientTheme).padding(50)
            }
        }
    }
}

struct LessonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonDetailsView(globalThemeBinding: .constant("Musique"), localTheme: "Musique", icone: "music", gradientTheme: GradientData.gradientPurple)
    }
}
