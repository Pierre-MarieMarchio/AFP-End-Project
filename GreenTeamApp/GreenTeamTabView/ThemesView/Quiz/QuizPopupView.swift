//
//  QuizPopupView.swift
//  GreenTeamApp Alpha 0.0.2
//
//  Created by Apprenant30 on 06/02/2023.
//

import SwiftUI

struct QuizPopupView: View {
    
    @Binding var showingQuizPopup: Bool
    let selectedThemeTitle: String
    
    var filteredThemes: [QuizTip] {
        return quiztips.filter { $0.tipTheme == selectedThemeTitle }
    }
    
    var body: some View {
        ZStack {
            VStack {
                ZStack{
                    VStack {
                        Text("ceci et un test")
                            .padding()
                        Button(action: {self.showingQuizPopup = false
                        }) {
                            Text("test")
                        }
                        .padding()
                        Spacer()
                        
                    }
                }
                .frame(width: 320, height: 530)
                .background(CustomColor.dullCyan)
                .opacity(0.80)
                .cornerRadius(20)
                .shadow(radius: 10)
                .offset(y: -40)
            }
            NavigationStack {
                NavigationLink( destination: QuizReadTipView(quiztip: filteredThemes.randomElement()!)) {
                    
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 200, height: 80)
                            .cornerRadius(45)
                            .foregroundColor(CustomColor.paleYellow)
                        Text("Avec astuce")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.title2)
                    }
                }
            }
            .offset(y: 20)
        }

    }
}


