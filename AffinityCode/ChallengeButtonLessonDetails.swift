//
//  ChallengeButtonLessonDetails.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ChallengeButtonLessonDetails: View {
    
    @Binding var globalThemeBinding: ThemeType
    
    var body: some View {
        NavigationLink(destination: QuizzView() ) {
            Text("Défi")
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

struct ChallengeButtonLessonDetails_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeButtonLessonDetails(globalThemeBinding: .constant( .music))
    }
}
