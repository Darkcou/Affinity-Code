//
//  TabView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 19/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    @State var globalThemeBinding : ThemeType = .cinema
    init() {
        UITabBar.appearance().barTintColor = UIColor.black
    }
    @State var lesson : Lesson = .init(lessonTitle: "Variables", content: "Cours 1")
    var body: some View {
        TabView {
            HomeView(lesson: lesson, globalThemeBinding: $globalThemeBinding).tabItem {
                Image(systemName: "house")
                Text("Home").tag(1)
            }

            ChallengeView(lesson: $lesson, globalThemeBinding: $globalThemeBinding).tabItem {
                Image( systemName: "hare")
                Text("Defis").tag(2)
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
