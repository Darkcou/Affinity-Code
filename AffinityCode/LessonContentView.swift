//
//  LessonContentView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LessonContentView: View {
   var lesson: LessonContent
    var body: some View {
        VStack(alignment: .center) {
            Text(lesson.lessonTitle).foregroundColor(Color.white)
                .font(.system(size: 30))
                .padding()
            Text(lesson.lessonContent).foregroundColor(Color.white).font(.system(size: 20))
                .padding(0.1)
        }
    }
}
struct LessonContentView_Previews: PreviewProvider {
    static var previews: some View {
        LessonContentView(lesson: .variables)
    }
}
