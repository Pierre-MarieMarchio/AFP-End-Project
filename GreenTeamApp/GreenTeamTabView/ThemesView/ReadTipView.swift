//
//  ReadTipView.swift
//  GreenTeamApp Alpha 0.0.2
//
//  Created by Apprenant30 on 03/02/2023.
//

import SwiftUI

struct ReadTipView: View {
    
    var tip: Tip
    
    var body: some View {
        ZStack{
            
            CustomColor.backgroundColor
                .ignoresSafeArea()
            
            
            
            VStack {
                
                HStack {
                    
                    Text(tip.tipTitle)
                        .font(.title)
                        .padding()
                        .foregroundColor(CustomColor.neonCyan)
                    
                    Spacer()
                }
                
                ScrollView {

                    Text(tip.tipTexte)
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
            }
        }
    }
}



