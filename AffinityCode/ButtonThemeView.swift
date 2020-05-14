//
//  ButtonTheme.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 11/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ButtonThemeView: View {
    @Binding var globalThemeBinding: String
        var localTheme: String
        var icone: String
        var gradientTheme : Gradient
        
        var body: some View {
            VStack {
                ZStack {
                    if self.globalThemeBinding == self.localTheme {
                        Circle()
                            .fill(LinearGradient(gradient: gradientTheme, startPoint: .leading, endPoint: .trailing))
                            .frame(width: 75, height: 75)
                    }
                    else {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 75, height: 75)
                    }
                    Image(icone)
                        .resizable().frame(width: 50, height: 50)
                }
                Text(localTheme).foregroundColor(Color.white).bold()
            }
            .onTapGesture {
                self.globalThemeBinding = self.localTheme
            }
        }
    }

struct ButtonThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonThemeView(globalThemeBinding: .constant("music"), localTheme: "music", icone: "music", gradientTheme: GradientData.gradientPurple)
    }
}
