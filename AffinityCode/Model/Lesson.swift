//
//  Lesson.swift
//  AffinityCode
//
//  Created by Benjamin Gronier on 25/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation

struct Lesson : Hashable {
    var lessonTitle: String
    var content: String
    
}

struct Example {
    var exampleName : [String]
    var exampleImage : [String]
}

func allLessons() -> [Lesson] {
    var allLesson:[Lesson]=[]
    Activity.allCases.map { lesson in allLesson.append(Lesson.init(lessonTitle: lesson.name, content: lesson.contient))}
    return allLesson
}
