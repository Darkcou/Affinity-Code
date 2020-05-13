//
//  ChallengeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 11/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI



struct ChallengeView: View {
    
    var challengeArray: [String] = ["VAR","Function","test","..."]
    
    var body: some View {
        ZStack{
            Color(.gray)
            VStack{Text("Defis")
                .font(.title)
                ListChallenge()
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
    func ListChallenge() -> some View {
        return VStack {
            ForEach(challengeArray, id: \.self) { challenge in
                ZStack{
                    ChallengeButtonView()
                    Text("\(challenge)")
                }}
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
