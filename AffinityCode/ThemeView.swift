//
//  ThemeView.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 19/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ThemeView: View {
    
    @Binding var globalThemeBinding: ThemeType
    
    var body: some View {
            VStack {
                Text("Personnalisez vos exemples:").foregroundColor(Color.white).font(.system(size: 25))
                HStack {
                    ForEach(ThemeType.allCases, id: \.self) { theme in
                        ButtonThemeView(globalThemeBinding: self.$globalThemeBinding, localTheme: theme).padding(8)
                    }
                }
            }
        }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(globalThemeBinding: .constant(.music))
    }
}
