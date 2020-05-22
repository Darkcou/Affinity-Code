//
//  ListView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonsView: View {
    var mainLessons : [String?] = ["Variables", "Strings et entiers", "Doubles et booléens", "Strings Multi-lignes"]
    @State var globalTheme : String  = "Musique"
    var gradientBar: Gradient
    
    func list() -> some View {
        return VStack {
            ForEach(mainLessons, id: \.self) { mainLesson in
                NavigationLink(destination: LessonDetailsView(globalThemeBinding: self.$globalTheme, gradientTheme: self.gradientBar)) {
                ZStack{
                    HomeButtonView(globalLessonBinding: self.$globalTheme, localLessonTheme: self.globalTheme, gradientBar: self.gradientBar)
                    Text(mainLesson!)
                    .bold()
                        .font(.system(size:30))
                        .frame(width: 300, height: 24, alignment: .center)
                        .padding()
                        .background(LinearGradient(gradient: self.gradientBar, startPoint: .leading, endPoint: .trailing))
                        .foregroundColor(Color.black)
                    .cornerRadius(34)
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


struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsView(mainLessons: ["Variables"], globalTheme : "Musique",   gradientBar: GradientData.gradientPurple)
    }
}
