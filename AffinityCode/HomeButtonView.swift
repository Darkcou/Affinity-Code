//
//  HomeButtonView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 13/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct HomeButtonView: View {
     @Binding var globalLessonBinding: ThemeType
         var localLessonTheme: ThemeType
         var body: some View {
             VStack {
                 Button(action: {print("test")}) {
                     ZStack {
                         if self.globalLessonBinding == self.localLessonTheme {
                             Rectangle()
                                .fill(LinearGradient(gradient: self.globalLessonBinding.gradient , startPoint: .leading, endPoint: .trailing))
                                 .frame(width: 330, height: 55)
                                 .cornerRadius(24)
                                 .padding()
                         }
                     }
                 }
             }
         }
     }


struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButtonView(globalLessonBinding: .constant(.music), localLessonTheme: .music)
    }
}
