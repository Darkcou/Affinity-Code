//
//  LessonDetailsView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonDetailsView: View {
    
    @State var lesson : Lesson
    @Binding var globalThemeBinding: ThemeType
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        VStack {
            ThemeView(globalThemeBinding: self.$globalThemeBinding)
            
            LessonContentView(lesson: lesson)
        //    ExamplesView(themeImageExamples: $themeImageExamples, themeExample: $themeExample, themeGradient: self.lesson.type.gradient)
            ChallengeButtonLessonDetails(globalThemeBinding: $globalThemeBinding)
            }
        }
    }
}

struct LessonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonDetailsView(lesson: .init(title: "Variables", content: "cours", type: .music), globalThemeBinding: .constant( .music))
    }
}
