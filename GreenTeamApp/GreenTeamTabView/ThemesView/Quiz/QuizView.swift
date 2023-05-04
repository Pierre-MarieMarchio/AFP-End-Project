//
//  QuizView.swift
//  GreenTeamApp Alpha 0.0.2
//
//  Created by Apprenant30 on 07/02/2023.
//

import SwiftUI



struct QuizView: View {
    
    @Binding var quizNumber : Int
    
    var quiz : Quiz
    
    var body: some View {
        VStack{
            
            Text("Titre quiz")
                .font(.system(size: 30))
                .padding()
            
            
 //           ForEach  {
                Text("Question a remplacer")
                    .font(.system(size: 20))
//            }
            Spacer()
        }
    }
}


