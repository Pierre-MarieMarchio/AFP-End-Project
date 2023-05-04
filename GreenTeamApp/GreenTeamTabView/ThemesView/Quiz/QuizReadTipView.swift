//
//  QuizReadTipView.swift
//  GreenTeamApp Alpha 0.0.2
//
//  Created by Apprenant30 on 07/02/2023.
//

import SwiftUI

struct QuizReadTipView: View {
    var quiztip: QuizTip
  @State  var quizNumber = 0
    
    var filteredQuizzes: [Quiz] {
        return quiz.filter { $0.quizTip == quiztip.tipTitle }
     }
    
    var body: some View {
        ZStack{
            
            CustomColor.backgroundColor
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Text(quiztip.tipTitle)
                        .font(.title)
                        .padding()
                        .foregroundColor(CustomColor.neonCyan)
                    
                    Spacer()
                }
                
                ScrollView {
                    
                    Text(quiztip.tipTexte)
                        .padding()
                        .foregroundColor(CustomColor.neonCyan)
                        .frame (width: 350 )
                        .background(
                            Rectangle()
                                .fill(CustomColor.whiteOpacity)
                                .cornerRadius(20)
                                .shadow(radius: 5)
                            
                        )
                }
                
               
                NavigationLink (destination: QuizView(quizNumber: $quizNumber, quiz: filteredQuizzes[quizNumber]))
                    {
                        ZStack {
                            Rectangle()
                            
                                .frame(width: 140, height: 80)
                                .cornerRadius(45)
                                .foregroundColor(CustomColor.paleYellow)
                            Text("Quiz")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.title2)
                        }
                        .padding()
                        
                    }
                
                
            }
        }
    }
    
}
