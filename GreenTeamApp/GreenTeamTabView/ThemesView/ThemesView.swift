//
//  ThemesView.swift
//  GreenTeamTabView
//
//  Created by Apprenant30 on 31/01/2023.
//

import SwiftUI
import Foundation



struct ThemesView: View {
    
    @State private var searchText = ""
    @State private var filteredThemes = themes
    @State private var selectedTheme: Theme?
    @State var itemePosition: Int = 0
    @State var showingQuizPopup = false
    
    var selectedThemeTitle: String {
        return selectedTheme?.themeTitle ?? "No theme selected"
    }
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                CustomColor.backgroundColor
                    .ignoresSafeArea()
                    .searchable(text: $searchText)
                    .navigationTitle("Thematique")
                
                
                
                VStack {
                    Spacer()
                    VStack {
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            
                            
                            HStack (spacing:-40) {
                                GeometryReader {proxy in
                                    Text("").preference(key: ScrollPreferenceKey.self,value: proxy.frame(in: .global).minX)
                                }
                                .onPreferenceChange(ScrollPreferenceKey.self){ pref in
                                    let position = -Int(pref-250) / 280
                                    if position >= filteredThemes.count {
                                        selectedTheme = filteredThemes [filteredThemes.count-1]
                                        
                                    }
                                    else {
                                        selectedTheme = filteredThemes [position]
                                        
                                    }
                                }
                                ForEach(filteredThemes.filter({ searchText.isEmpty ? true : $0.themeTitle.lowercased().contains(searchText.lowercased()) })) { theme in
                                    GeometryReader  { geometry in
                                        
                                        ZStack {
                                            Rectangle()
                                                .foregroundColor(CustomColor.boldOrange)
                                                .frame(width: 280,height: 170)
                                                .cornerRadius(10)
                                                .shadow(radius: 20)
                                            
                                            
                                            Text(theme.themeTitle)
                                        }
                                        .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX)-78) / -20), axis: (x: 0, y: 10.0, z: 0))
                                        
                                    }
                                    .frame(width: 320, height: 200)
                                }
                            }
                            .padding(65)
                            
                        }
                        .frame(height: 200)
                        .offset(y: -75)
                    }
                    Spacer()
                    Divider()
                    
                    ZStack{
                        Image("Analytics process")
                            .offset(y: -80 )
                            .frame(width:200, height: 200)
                        ZStack {
                            Button(action: {showingQuizPopup = true}, label: {
                                Rectangle()
                            })
                            .frame(width: 140, height: 80)
                            .cornerRadius(45)
                            .foregroundColor(CustomColor.paleYellow)
                            Text("Quiz")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.title2)
                            
                        }
                        .offset(x: 75, y: -160)
                        
                        
                        NavigationLink( destination: TipsView(selectedThemeTitle: selectedThemeTitle)) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 200, height: 80)
                                    .cornerRadius(45)
                                    .foregroundColor(CustomColor.paleYellow)
                                Text("ASTUCES")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.title2)
                            }
                            .offset(x: -50, y: -40)
                            
                        }
                    }
                }
                if showingQuizPopup {
                    ZStack {
                        VisualEffectView (effect: UIBlurEffect(style: .dark))
                            .edgesIgnoringSafeArea(.all)
                        QuizPopupView(showingQuizPopup: $showingQuizPopup, selectedThemeTitle: selectedThemeTitle)
                    }
                }
            }
        }
    }
}


struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue = CGFloat.zero
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
}

struct ThemesView_Previews: PreviewProvider {
    static var previews: some View {
        ThemesView()
    }
}
