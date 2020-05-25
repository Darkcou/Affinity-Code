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
        var homeButton : ActivityView
        switch globalThemeBinding {
        case .mode:
            homeButton = ActivityView(lessons: lessons , globalThemeBinding: $globalThemeBinding)
            
        case .game:
            homeButton = ActivityView(lessons: lessons, globalThemeBinding: $globalThemeBinding )
            
        case .cinema:
            homeButton = ActivityView(lessons: lessons, globalThemeBinding: $globalThemeBinding )
            
        case .music:
            homeButton = ActivityView(lessons: lessons, globalThemeBinding: $globalThemeBinding )
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
                    Text("Cours de Swift").foregroundColor(Color.white).font(.system(size: 60)).padding()
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
        HomeView(lessons: allLessons(), globalThemeBinding: .constant(.music))
    }
}
