//
//  HomeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var lessons : [Lesson]
    @Binding var globalThemeBinding : ThemeType
    
    func listRoom()-> some View {
        var homeButton : LessonView
        switch globalThemeBinding {
        case .mode:
            homeButton = LessonView(lessons: lessons[0], globalThemeBinding: $globalThemeBinding)
            
        case .game:
            homeButton = LessonView( lessons : lessons[1], globalThemeBinding: $globalThemeBinding )
            
        case .cinema:
            homeButton = LessonView( lessons : lessons[2], globalThemeBinding: $globalThemeBinding )
            
        case .music:
            homeButton = LessonView( lessons : lessons[3], globalThemeBinding: $globalThemeBinding )
        }
        return VStack {
            homeButton
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Cours de Swift").foregroundColor(Color.white).font(.system(size: 60)).padding()
                    ThemeView(globalThemeBinding: $globalThemeBinding)
                        listRoom()
                    
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(lessons: Lesson.allLessons, globalThemeBinding: .constant(.music))
    }
}
