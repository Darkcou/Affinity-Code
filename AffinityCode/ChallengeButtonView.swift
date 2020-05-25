//
//  ChallengeButtonView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 25/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ChallengeButtonView: View {
    var body: some View {
        NavigationLink(destination: QuizzView()) {
            Text("Quizz")
                .bold()
                .font(.system(size:30))
                .foregroundColor(Color.black)
                .frame(width: 330, height: 56)
                .background(LinearGradient(gradient:Gradient(colors: [Color(.red),Color(.yellow)]), startPoint: .leading, endPoint: .trailing)).cornerRadius(25).padding()
        }
    }
}

struct ChallengeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeButtonView()
    }
}
