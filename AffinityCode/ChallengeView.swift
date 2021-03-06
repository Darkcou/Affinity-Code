//
//  ChallengeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 11/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI



struct ChallengeView: View {
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    Image( systemName: "hare").resizable().foregroundColor(.white).frame(width:75,height: 50); Text("Defis").foregroundColor(Color.white).font(.system(size: 60))
                    Text("Sélectionner votre defi :").foregroundColor(Color.white).font(.system(size: 25))
                    Spacer().frame(height: 60)
                    
                    ChallengeButtonView()
                }
                .navigationBarTitle("Defis", displayMode: .inline)
            }
        }//.edgesIgnoringSafeArea(.all)
        
    }
    
    struct ChallengeView_Previews: PreviewProvider {
        static var previews: some View {
            ChallengeView()
        }
    }
}
