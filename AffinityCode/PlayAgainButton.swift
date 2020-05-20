//
//  PlayAgainButton.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct PlayAgainButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(red: 0, green: 147.0 / 255.0, blue: 135.0 / 255.0))
            .foregroundColor(.white)
            .cornerRadius(8.0)
    }
}

struct PlayAgainButton: View {
    @Binding var isResultPresented: Bool
    
    var body: some View {
        Button("Recommencer") {
            self.isResultPresented = false
        }
        .modifier(PlayAgainButtonModifier())
    }
}
