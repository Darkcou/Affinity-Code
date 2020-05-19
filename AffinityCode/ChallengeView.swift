//
//  ChallengeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 11/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI



struct ChallengeView: View {
    @State var globalTheme : String = "Musique"
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            VStack{Text("Defis").foregroundColor(Color.white).font(.system(size: 60)).padding()
                Text("Sélectionner votre defi").foregroundColor(Color.white).font(.system(size: 25))
                LessonsView(globalLessonBinding: $globalTheme, localLessonTheme: "Musique", gradientBar: Gradient(colors: [Color(.red),Color(.yellow)]))
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
    
    struct ChallengeView_Previews: PreviewProvider {
        static var previews: some View {
            ChallengeView()
        }
    }
}
