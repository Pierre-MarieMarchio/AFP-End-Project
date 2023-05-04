//
//  EditReminderView.swift
//  GreenTeamApp Alpha 0.0.2
//
//  Created by Amel Saadi Cherif on 03/02/2023.
//

import SwiftUI
struct EditReminderView: View {
    var body: some View {
        
        ZStack {
            CustomColor.backgroundColor
                .ignoresSafeArea()
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                
                Image("PersonalInfo")
                    .resizable()
                    .cornerRadius(30)
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct EditReminderView_Previews: PreviewProvider {
    static var previews: some View {
        EditReminderView()
    }
}

