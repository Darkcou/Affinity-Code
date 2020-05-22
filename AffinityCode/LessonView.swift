//
//  ListView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonView: View {
    
    @State var lessons : Lesson
    @Binding var globalThemeBinding : ThemeType
    
    var body: some View {
            VStack {
                ForEach(Activity.allCases, id: \.self) { activity in
                    NavigationLink(destination: LessonDetailsView(lesson: self.lessons, globalThemeBinding: self.$globalThemeBinding)) {
                        ZStack {
                            HomeButtonView(globalThemeBinding: self.$globalThemeBinding, lessons: self.lessons)
                            NavigationLink(destination: LessonDetailsView(lesson: self.lessons, globalThemeBinding: self.$globalThemeBinding)) {
                            Text("\(activity.rawValue)")
                                .bold()
                                .font(.system(size:30))
                                .foregroundColor(Color.black)
                        }
                    }
                }
            }
        }
    }
}


struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lessons: .init(title: .variables, content: "Cours", type: .music), globalThemeBinding: .constant( .music))
    }
}
