//
//  QuestionView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 18/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct QuestionView: View {
    @State private var spells = ["Quel est le mot-clé pour une variable?", "Akali", "Azir", "Bard", "Brand", "Corki", "Fiddlesticks", "Galio", "Kayle", "Leblanc", "Morgana", "Zilean"].shuffled()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
