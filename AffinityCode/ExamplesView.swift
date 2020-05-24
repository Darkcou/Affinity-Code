//
//  ExamplesView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ExamplesView: View {
    
    @Binding var globalThemeBinding: ThemeType
    
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
                    Image(globalThemeBinding.exempleImage).resizable().frame(width: 60, height: 60)
                    Text(globalThemeBinding.exempleName).bold()
                }
                Text("=").font(.system(size: 50))
                VStack {
                    Text("Donnée")
                    Image(globalThemeBinding.exempleImage2).resizable().frame(width: 60, height: 60)
                    Text(globalThemeBinding.exempleName2).bold()
                }
            }
            .padding().background(LinearGradient(gradient: globalThemeBinding.gradient, startPoint: .leading, endPoint: .trailing))
        }
    }
}

struct ExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        ExamplesView(globalThemeBinding: .constant(.music))
}
}
