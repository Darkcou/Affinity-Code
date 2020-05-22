//
//  ButtonTheme.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 11/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ButtonThemeView: View {
    
    @Binding var globalThemeBinding: ThemeType
    var localTheme : ThemeType
        
        var body: some View {
            VStack {
                ZStack {
                    if self.globalThemeBinding == self.localTheme {
                        Circle()
                            .fill(LinearGradient(gradient: localTheme.gradient, startPoint: .leading, endPoint: .trailing))
                            .frame(width: 75, height: 75)
                    }
                    else {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 75, height: 75)
                    }
                    Image(self.localTheme.imageName)
                        .resizable().frame(width: 50, height: 50)
                }
                Text(localTheme.name).foregroundColor(Color.white).bold()
            }
            .onTapGesture {
                self.globalThemeBinding = self.localTheme
            }
        }
    }

struct ButtonThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonThemeView(globalThemeBinding: .constant(ThemeType.music), localTheme: .music)
    }
}
