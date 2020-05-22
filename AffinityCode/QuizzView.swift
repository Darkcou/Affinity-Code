//
//  QuizzView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 20/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct QuizzView: View {
    
    @ObservedObject private var quizManager = QuizzManager(activity: "Variables")
    
    @State private var activity = "Variables"
    @State private var guessedCorrectly = false
    @State private var showResult = false
    @State private var textColor = Color.white
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: GradientData.myBlack, startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Text(quizManager.currentQuestion.question)
                            .bold()
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .font(.title)
                            .padding()
                        
                        Spacer()
                        
                        VStack {
                            ForEach(quizManager.currentQuestion.possibleAnswers) { answer in
                                AnswerButton(textColor: self.$textColor, answer: answer.text) {
                                    self.guessedCorrectly = self.quizManager.checkAnswer(answer, to: self.quizManager.currentQuestion)
                                    self.updateResult()
                                }
                            }
                            .padding()
                        }
                        
                        Spacer()
                    }
                    .padding()
                }
                .popover(isPresented: self.$showResult) {
                    ResultView(isPresented: self.$showResult, score: self.quizManager.correctAnswers)
                        .onDisappear {
                            self.resetGame()
                    }
                }
            }
            
            private func resetGame() {
                quizManager.questionsAsked = 0
                quizManager.correctAnswers = 0
                textColor = .white
                quizManager.getRandomQuestion(activity: activity)
            }
            
            private func updateResult() {
                textColor = guessedCorrectly ? .green : .red
                if quizManager.questionsAsked == 4 {
                    self.showResult.toggle()
                } else {
                    loadNextRoundWithDelay(seconds: 1.5)
                }
            }
            
            private func loadNextRoundWithDelay(seconds: Double) {
                // Executes the nextRound method at the dispatch time on the main queue
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    self.textColor = .white
                    self.quizManager.getRandomQuestion(activity: self.activity)
                }
            }
        }


struct QuizzView_Previews: PreviewProvider {
    static var previews: some View {
        QuizzView()
    }
}
