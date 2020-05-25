//
//  TabView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 19/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.black
    }
    @State var globalThemeBinding : ThemeType = .music
    @State var lessons : [Lesson] = allLessons()
    var body: some View {
        TabView {
            HomeView(lessons: lessons, globalThemeBinding: $globalThemeBinding).tabItem {
                Image(systemName: "house")
                Text("Home").tag(1)
            }

            ChallengeView().tabItem {
                Image( systemName: "hare")
                Text("Defis").tag(2)
            }
        }//.accentColor(.white).edgesIgnoringSafeArea(.top)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
