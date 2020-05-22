//
//  ListView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonView: View {
    
    @State var lesson : Lesson
    @Binding var globalThemeBinding : ThemeType
    
    var body: some View {
        VStack {
            NavigationLink(destination: LessonDetailsView(lesson: lesson, globalThemeBinding: $globalThemeBinding)) {
            ZStack{
          //      HomeButtonView(globalLessonBinding: self.$globalTheme, localLessonTheme: self.globalTheme, gradientBar: self.gradientBar)
                Text(lesson.title)
                .bold()
                    .font(.system(size:30))
                    .frame(width: 300, height: 24, alignment: .center)
                    .padding()
                    .background(LinearGradient(gradient: self.lesson.type.gradient , startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(Color.black)
                .cornerRadius(34)
                }
            }
        }
    }
}


struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lesson: .init(title: "Variables", content: "Cours", type: .music), globalThemeBinding: .constant( .music))
    }
}
