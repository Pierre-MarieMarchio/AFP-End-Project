//
//  TipsView.swift
//  GreenTeamApp Alpha 0.0.1
//
//  Created by Apprenant30 on 02/02/2023.
//

import SwiftUI

struct TipsView: View {
    
    let selectedThemeTitle: String
    
    var filteredThemes: [Tip] {
        return tips.filter { $0.tipTheme == selectedThemeTitle }
    }
    
    var body: some View {
        NavigationStack{
            ZStack{
                CustomColor.backgroundColor
                    .ignoresSafeArea()
                    .navigationTitle("Astuces")
                
                VStack(alignment: .leading) {
                    Text("\(selectedThemeTitle)")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(CustomColor.neonCyan)
                        .padding()
                        .offset(x: 40, y: -10)
                    
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()) , GridItem(.flexible())]) {
                            ForEach(filteredThemes){ tip in
                                ZStack(alignment:.leading) {
                                    
                                    NavigationLink (destination: ReadTipView(tip: tip))
                                    {
                                        Text(tip.tipTitle)
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(CustomColor.neonCyan)
                                            .frame(width: 165, height: 100)
                                            .background(
                                                Rectangle()
                                                    .fill(tip.tipColor)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 10)
                                            )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}




struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView(selectedThemeTitle: "Theme Title")
    }
}
