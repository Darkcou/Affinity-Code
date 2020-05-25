//
//  HomeButtonView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct HomeButtonView: View {
   var lesson : Lesson
     @Binding var globalThemeBinding: ThemeType
         var body: some View {
            NavigationLink(destination: LessonDetailsView(lesson: lesson, globalThemeBinding: self.$globalThemeBinding)) {
             VStack {
                     ZStack {
                             Rectangle()
                                .fill(LinearGradient(gradient: self.globalThemeBinding.gradient , startPoint: .leading, endPoint: .trailing))
                                 .frame(width: 330, height: 55)
                                 .cornerRadius(24)
                                 .padding()
                         }
                     }
                 }
             }
         }


struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButtonView(lesson: .init(lessonTitle: "Variables", content: "Cours 1"), globalThemeBinding: .constant(.music))
    }
}
