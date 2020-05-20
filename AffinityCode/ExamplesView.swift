//
//  ExamplesView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ExamplesView: View {
    
    @Binding var lessonName: String
    @Binding var themeImageExamples : String
    @Binding  var themeExample : String
    
    var body: some View {
        Text("\(lessonName)")
    }
}

struct ExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        ExamplesView(lessonName: .constant("Variables"), themeImageExamples: .constant( "heart.fill") , themeExample: .constant("Musique"))
    }
}
