//
//  HomeButtonView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct HomeButtonView: View {
     @Binding var globalLessonBinding: String
         var localLessonTheme: String
         var gradientBar: Gradient
         var body: some View {
             VStack {
                 Button(action: {print("test")}) {
                     ZStack {
                         if self.globalLessonBinding == self.localLessonTheme {
                             Rectangle()
                                 .fill(LinearGradient(gradient: gradientBar, startPoint: .leading, endPoint: .trailing))
                                 .frame(width: 300, height: 55)
                                 .cornerRadius(24)
                                 .padding()
                             Text("Variables")
                                 .font(.system(size:(25)))
                                 .foregroundColor(Color.black)
                         }
                     }
                 }
                 Button(action: {print("test")}) {
                     ZStack {
                         if self.globalLessonBinding == self.localLessonTheme {
                             Rectangle()
                                 .fill(LinearGradient(gradient: gradientBar, startPoint: .leading, endPoint: .trailing))
                                 .frame(width: 300, height: 55)
                                 .cornerRadius(24)
                                 .padding()
                             Text("Strings et entiers")
                                 .font(.system(size:(25)))
                                 .foregroundColor(Color.black)
                         }
                     }
                 }
                 Button(action: {print("test")}) {
                     ZStack {
                         if self.globalLessonBinding == self.localLessonTheme {
                             Rectangle()
                                 .fill(LinearGradient(gradient: gradientBar, startPoint: .leading, endPoint: .trailing))
                                 .frame(width: 300, height: 55)
                                 .cornerRadius(24)
                                 .padding()
                             Text("Doubles et booléens")
                                 .font(.system(size:(25)))
                                 .foregroundColor(Color.black)
                         }
                     }
                 }
                 Button(action: {print("test")}) {
                     ZStack {
                         if self.globalLessonBinding == self.localLessonTheme {
                             Rectangle()
                                 .fill(LinearGradient(gradient: gradientBar, startPoint: .leading, endPoint: .trailing))
                                 .frame(width: 300, height: 55)
                                 .cornerRadius(24)
                                 .padding()
                             Text("Strings multi-lignes")
                                 .font(.system(size:(25)))
                                 .foregroundColor(Color.black)
                         }
                     }
                 }
             }
         }
     }


struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButtonView(globalLessonBinding: .constant("variables"), localLessonTheme: "music", gradientBar: GradientData.gradientPurple)
    }
}
