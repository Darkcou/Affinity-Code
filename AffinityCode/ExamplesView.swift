//
//  ExamplesView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ExamplesView: View {
    
    @Binding var themeImageExamples : String
    @Binding var themeExample : String
    var themeGradient : Gradient = GradientData.gradientPurple
    
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    Text("Mot clé")
                Image("key").resizable().frame(width: 60, height: 60)
                    Text("var").bold()
                }
                Text("+").font(.system(size: 50))
                VStack {
                    Text("Nom de la variable")
            Image(themeImageExamples).resizable().frame(width: 60, height: 60)
                    Text(themeExample).bold()
                }
                Text("=").font(.system(size: 50))
                VStack {
                    Text("Donnée")
                Image(themeImageExamples).resizable().frame(width: 60, height: 60)
                    Text(themeExample).bold()
                }
            }
        .padding().background(LinearGradient(gradient: themeGradient, startPoint: .leading, endPoint: .trailing))
        }
    }
}

struct ExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        ExamplesView(themeImageExamples: .constant("radio"), themeExample: .constant("Jukebox"))
    }
}
