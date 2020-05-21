//
//  LessonContentView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonContentView: View {
    @Binding var lessonName: String
    var lesson: allLessons
    var body: some View {
        VStack {
            Text(lessonName).foregroundColor(Color.white)
                .font(.system(size: 30))
                .padding()
            .padding()
            }
        }
    }

struct LessonContentView_Previews: PreviewProvider {
    static var previews: some View {
        LessonContentView(lessonName: .constant("Variables"), lesson: .variable)
    }
}
