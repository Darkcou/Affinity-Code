//
//  Question.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation

struct Question {
    var id: String = UUID().uuidString
    var type:Activity
    var question: String
    var answer: Answer
    var possibleAnswers: [Answer]
}

extension Question: Equatable {
    func getType() -> String {
        return self.type.name
    }
}

struct Answer: Identifiable, Equatable {
    var id: String = UUID().uuidString
    var text: String
}
