//
//  LessonDetailsView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonDetailsView: View {
    var lesson : Lesson
    @Binding var globalThemeBinding: ThemeType


    var body: some View {
        
        ZStack {
            LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
            VStack {
                ThemeView(globalThemeBinding: self.$globalThemeBinding)
                
                LessonContentView(lesson: lesson)
                Spacer()
                ExamplesView(globalThemeBinding: $globalThemeBinding)
                LessonButtonChallengeView(quizzActivity:lesson.lessonTitle,globalThemeBinding: $globalThemeBinding).padding(40)
            }
            .navigationBarTitle("\(lesson.lessonTitle)")
        }
    }
}

struct LessonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonDetailsView(lesson: .init(lessonTitle: "Variables", content: "Cours 1"), globalThemeBinding: .constant( .music))
    }
}
