//
//  QuestionView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 19/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct QuestionView: View {
    
    @State private var quizzLesson = [quizzVariable[0], quizzVariable[1], quizzVariable[2], quizzVariable[3]]
    
    @State private var correctAnswer = 3
    
    @State private var score = 0
    @State private var alertTitle = ""
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text(quizzLesson[0].questions.uppercased())
                Spacer()
                ForEach(0..<4) { number in
                    Text(self.quizzLesson[0].answers[number])
                    .padding().onTapGesture {
                            self.answerTapped(number)
                    }
                    Spacer()
                }
            }
            .navigationBarTitle(Text("Quizz"))
            .alert(isPresented: $showingAlert) {
                Alert(title: Text(alertTitle), message: Text("Your score is \(score)"), dismissButton: .default(Text("Continue")) {
                    self.askQuestion()
                    })
            }
        }
    }
    func answerTapped (_ tag: Int) {
        if tag == correctAnswer {
            score += 1
            alertTitle = "Correct"
        }
        else {
            score -= 1
            alertTitle = "Wrong"
        }
        
        showingAlert = true
    }
    func askQuestion() {
        quizzLesson[0].answers.sort()
        correctAnswer = 3
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
