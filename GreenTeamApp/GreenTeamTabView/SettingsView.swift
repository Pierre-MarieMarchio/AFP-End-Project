//
//  StettingsView.swift
//  GreenTeamApp Alpha 0.0.2
//
//  Created by Apprenant30 on 03/02/2023.
//

import SwiftUI
struct SettingsView: View {
    var body: some View {
        ZStack {
            CustomColor.backgroundColor
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                ForEach(elements) { element in
                    HStack (){
                        Image(element.imageElement)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40,height: 40)
                                .padding(.vertical, 8)
                        
                        Text(element.name)
                            .foregroundColor(CustomColor.neonCyan)
                            .offset(x:10)
                        Spacer()
                        
                        Image("Arrow")
                        
                           .resizable()
                           .scaledToFit()
                           .frame(width: 20,height: 20)
                           .padding()
                                .foregroundColor(Color.white)
                        
                        
                    }
                }
                
                Spacer()
                
            }
            .padding()
            .offset(x: 5, y: 15)
        }
        
        
    }
}


struct StettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
