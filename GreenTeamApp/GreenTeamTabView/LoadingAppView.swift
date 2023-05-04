//
//  LoadingAppView.swift
//  GreenTeamTabView
//
//  Created by Apprenant30 on 31/01/2023.
//

import SwiftUI

struct LoadingAppView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        
        ZStack {
            CustomColor.backgroundColor
                .ignoresSafeArea()
            VStack {
               
                Text("GreenDigitalApp").bold()
                    .font(.largeTitle)
                    .foregroundColor(CustomColor.neonCyan)
                Spacer()
                    .frame(height:150)
              //  Image("greendigitalIllustration")
                Image("ScreenTreeNC")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fill)
                    .padding(.all)
                
                
                Spacer()
                    .frame(height:150)
                Text("MAKE DIGITAL").bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                HStack {
                    Text("GREEN")
                        .font(.title)
                        .bold()
                        .foregroundColor(CustomColor.neonCyan)
                    Text("AGAIN!").bold()
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
        }
    }
}


struct LoadingAppView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingAppView()
    }
}
