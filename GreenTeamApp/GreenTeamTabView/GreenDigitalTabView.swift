//
//  ContentView.swift
//  GreenTeamTabView
//
//  Created by Apprenant 32 on 31/01/2023.
//

import SwiftUI

struct GreenDigitalTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house" )
                    Text("Accueil")
                }
            ThemesView()
                .tabItem {
                    Image(systemName: "book" )
                    Text("Thèmes")
                }
            RemindersView()
                .tabItem {
                    Image(systemName: "bell.badge" )
                    Text("Rappels")
                }
            ProfilesView()
                .tabItem {
                    Image(systemName: "person.crop.circle" )
                    Text("Profil")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GreenDigitalTabView()
    }
}
