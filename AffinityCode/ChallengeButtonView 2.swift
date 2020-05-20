//
//  ChallengeButtonView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 11/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ChallengeButtonView: View {
    var body: some View {
        Button(action:{print("test")}){
            Rectangle().fill( LinearGradient(gradient:Gradient(colors: [Color(.red),Color(.yellow)]) , startPoint: .leading, endPoint: .trailing)).frame(width: 300, height: 55).cornerRadius(24).padding()
        }
    }
}

struct ChallengeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeButtonView()
    }
}
