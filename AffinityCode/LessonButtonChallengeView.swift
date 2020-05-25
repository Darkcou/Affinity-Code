//
//  LessonButtonChallengeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 25/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonButtonChallengeView: View {
    @Binding var globalThemeBinding: ThemeType
    var body: some View {
        NavigationLink(destination: QuizzView() ) {
            Text("Test")
            .bold()
                .font(.system(size:30))
                .frame(width: 100, height: 30, alignment: .center)
                .padding()
                .background(LinearGradient(gradient: globalThemeBinding.gradient , startPoint: .leading, endPoint: .trailing))
                .foregroundColor(Color.black)
            .cornerRadius(10)
        }
    }
}

struct LessonButtonChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        LessonButtonChallengeView(globalThemeBinding: .constant( .music))
    }
}
