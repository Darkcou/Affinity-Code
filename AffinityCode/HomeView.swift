//
//  HomeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct HomeView: View {
     var lesson : LessonContent
    @Binding var globalThemeBinding : ThemeType
    
    func listRoom()-> some View {
        var homeButton : LessonView
        switch globalThemeBinding {
        case .mode:
            homeButton = LessonView(lesson: lesson , globalThemeBinding: $globalThemeBinding)
            
        case .game:
            homeButton = LessonView(lesson: lesson, globalThemeBinding: $globalThemeBinding )
            
        case .cinema:
            homeButton = LessonView(lesson: lesson, globalThemeBinding: $globalThemeBinding )
            
        case .music:
            homeButton = LessonView(lesson: lesson, globalThemeBinding: $globalThemeBinding )
        }
        return VStack {
            homeButton
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
                VStack {
                    ThemeView(globalThemeBinding: $globalThemeBinding)
                        listRoom()
                }
                .navigationBarTitle("Cours de Swift", displayMode: .inline)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(lesson: .variables, globalThemeBinding: .constant(.music))
    }
}
