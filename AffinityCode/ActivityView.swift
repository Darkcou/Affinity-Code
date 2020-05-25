//
//  ListView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ActivityView: View {
    var lessons : [Lesson]
    @Binding var globalThemeBinding : ThemeType
    
    func list() -> some View {
        return VStack {
                ForEach(lessons, id: \.self) {  lesson in
                    NavigationLink(destination: LessonDetailsView(lesson: lesson, globalThemeBinding: self.$globalThemeBinding)) {
                        ZStack {
                            Text(lesson.lessonTitle)
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
    var body: some View {
        VStack {
            list()
        }
    }
}


struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(lessons: allLessons(), globalThemeBinding: .constant(.music))
    }
}
