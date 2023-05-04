//
//  ProfilesView.swift
//  GreenTeamTabView
//
//  Created by Apprenant30 on 31/01/2023.
//

import SwiftUI


 
struct ProfilesView: View {
    @State var current = 0
   
   @AppStorage("Pseudo") var pseudo = "Pseudo"
@AppStorage ("ProfilePicture") var profilePicture = "Monkey"
    var body: some View {
        
        NavigationStack {
        ZStack {
            CustomColor.backgroundColor
                .ignoresSafeArea()
            VStack {
                
                NavigationLink(destination: ProfileDetailsView(), label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 360, height: 200)
                            .foregroundColor(CustomColor.whiteOpacityPlus)
                        
                            .cornerRadius(30)
                            .padding(.bottom, 40.0)
                            .offset(y: 70)
                        
                        
                        Rectangle()
                            .frame(width: 360, height: 80)
                            .overlay(LinearGradient(colors: [ CustomColor.paleYellow, CustomColor.boldOrange], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .shadow(radius: 8)
                            .cornerRadius(30)
                            .offset(y: -30)
                        
                        VStack {
                            Image(profilePicture)
                                .resizable()
                                .clipShape(Circle())
                                .frame(maxWidth: 90, maxHeight: 90)
                                .shadow(radius: 13)
                            
                            Text(pseudo)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("Lv : 12")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            
                            ProgressBar(lastIndex: 8, currentIndex: current)
                                .padding(.horizontal, 23)
                                .padding(.top, 10)
                            
                        }
                        
                        .offset(y: 30)
                    }
                })
                    
                    HStack {
                        
                        
                        
                        Image("FemaleAvatarWhite")
                            .resizable()
                            .frame(width: 95, height: 95)
                            .clipShape(Circle())
                          
                            .offset(y: -10)
                        
                        Image("person")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                           
                         
                            .offset(y: -30)
                        
                        Image("person")
                            .resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                           
                            .offset(y: -10)
                    }
                    .padding(.bottom, 30.0)
                    .offset(y: 80)
                    
                    
                    
                      Spacer()
                    ScrollView {
                        
                        
                        ForEach(members){ profile in
                            //  NavigationLink (destination: StaffDetails (staff: member),
                        label: do {
                            
                            
                            HStack{
                                
                                
                                ZStack {
                                    
                                    Rectangle()
                                        .frame(width: 320, height: 40)
                                        .foregroundColor(CustomColor.whiteOpacityPlus)
                                        .clipShape(Capsule())
                                    
                                    
                                    Text (profile.name)
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                }
                                .offset(x: 50)
                                
                                
                                Image(profile.profileImage)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 80, height: 80)
                                   // .shadow(radius: 5)
                                    .offset(x: -300, y: -20)
                                
                        
                                
                            }
                       
                            .offset(y: 90)
                        }
                            
                        }
                
                    }
                }
            }
            // Spacer()
            
        }
    }
    
}


struct ProfilesView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilesView()
    }
}
