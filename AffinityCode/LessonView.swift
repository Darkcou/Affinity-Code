//
//  ListView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonView: View {
    var lesson : Lesson
    @Binding var globalThemeBinding : ThemeType
    
    var body: some View {
            VStack {
                ForEach(Lesson.allLessons, id: \.self) { content in
                    NavigationLink(destination: LessonDetailsView(lesson: content, globalThemeBinding: self.$globalThemeBinding)) {
                        ZStack {
                            Text(content.lessonTitle)
                                .bold()
                                .font(.system(size:30))
                                .foregroundColor(Color.black)
                                .frame(width: 330, height: 56)
                                .background(LinearGradient(gradient: self.globalThemeBinding.gradient, startPoint: .leading, endPoint: .trailing)).cornerRadius(25).padding()
                                
                    }
                }
            }
        }
    }
}


struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lesson: .init(lessonTitle: "Variables", content: "Cours 1"), globalThemeBinding: .constant(.music))
    }
}
