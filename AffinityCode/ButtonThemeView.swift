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
       var localTheme : String
       var icone: String
    var body: some View {
        Circle()
    }
}

struct ButtonThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonThemeView(globalThemeBinding:.constant("music"), localTheme: "music", icone: "heart.fill")
    }
}
