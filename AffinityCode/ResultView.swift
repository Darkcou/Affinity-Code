//
//  ResultView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ResultView: View {
    
    @Binding var isPresented: Bool
    
    var score: Int
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        VStack {
                            Text("Vous avez")
                            Text("\(score) réponses")
                            Text("correctes")
                        }
                        .modifier(ResultTextModifier())
                        
                        PlayAgainButton(isResultPresented: $isPresented)
                    }
                    .padding()
                }
            }
        }



struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(isPresented: .constant(true), score: 0)
    }
}
