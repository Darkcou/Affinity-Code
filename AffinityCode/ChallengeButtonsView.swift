//
//  ChallengeButtonsView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 24/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ChallengeButtonsView: View {
    
    var body: some View {
        NavigationLink(destination: QuizzView()) {
                Text("Quizz")
                .bold()
                .font(.system(size:30))
                .foregroundColor(Color.black)
                .frame(width: 330, height: 56)
                    .background(Color.white).cornerRadius(25).padding()
            }
        }
    }

struct ChallengeButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeButtonsView()
    }
}
