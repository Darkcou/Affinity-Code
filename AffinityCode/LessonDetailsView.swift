//
//  LessonDetailsView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonDetailsView: View {
    var lesson : LessonContent
    @Binding var globalThemeBinding: ThemeType
    
    var body: some View {
            ZStack {
                LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
                VStack {
                    ThemeView(globalThemeBinding: self.$globalThemeBinding)
                    
                    LessonContentView(lesson: lesson)
                    Spacer()
                    ExamplesView(globalThemeBinding: $globalThemeBinding)
                    ChallengeButtonLessonDetails(globalThemeBinding: $globalThemeBinding).padding(40)
                }
            .navigationBarTitle("Title")
            }
        }
    }

struct LessonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonDetailsView(lesson: .variables, globalThemeBinding: .constant( .music))
    }
}
