//
//  RemindersView.swift
//  GreenTeamTabView
//
//  Created by Apprenant30 on 31/01/2023.
//

import SwiftUI


struct ToggleUI: View {
    @State var isOn = true
    
    
    var text: String
    var body: some View {
        Toggle(isOn: $isOn, label: {
            /* Text(text)
             .fontWeight(.bold)
             .foregroundColor(.white)
             .font(.title2)
             */
        })
        
        
        .onTapGesture {
            withAnimation { isOn.toggle() }
        }
    }
}
struct RemindersView: View {
    
    var body: some View {
        
        NavigationStack {
            
            //  NavigationView {
            
            ZStack {
                CustomColor.backgroundColor
                    .ignoresSafeArea()
                Image("TreeEarth")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                   // .frame(width:400, height: 400)
                
                VStack {
                    
                    
                    ForEach(reminders) { reminder in
                        ZStack{
                            
                            
                            
                            NavigationLink (destination: EditReminderView()) {
                                ZStack {
                                  
                                    Rectangle()
                                        .frame(width: 350, height: 66.0)
                                        .cornerRadius(40)
                                        .foregroundColor(CustomColor.paleYellow)
                                    
                                    HStack {
                                        Text(reminder.reminderName)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .font(.title2)
                                        // .multilineTextAlignment(.leading)
                                         .offset(x: 55)
                                           
                                        
                                        ToggleUI(text:reminder.reminderName)
                                        
                                            .toggleStyle(SwitchToggleStyle())
                                            .tint(CustomColor.dullCyan)
                                            .foregroundColor(.orange)
                                            .padding(40)
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




struct RemindersView_Previews: PreviewProvider {
    static var previews: some View {
        RemindersView()
    }
}
