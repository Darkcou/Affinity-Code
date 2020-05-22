//
//  LessonContentView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonContentView: View {
    var lesson: Lesson
    var body: some View {
        VStack {
            Text(lesson.title).foregroundColor(Color.white)
                .font(.system(size: 30))
                .padding()
            .padding()
            }
        }
    }

struct LessonContentView_Previews: PreviewProvider {
    static var previews: some View {
        LessonContentView(lesson: .init(title: "Variables", content: "cours", type: .music))
    }
}
