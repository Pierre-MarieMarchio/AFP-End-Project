//
//  ThemesData.swift
//  GreenTeamTabView
//
//  Created by Apprenant30 on 01/02/2023.
//

import Foundation


struct Theme: Identifiable {
    
    var id = UUID()
    var themeTitle: String
    
}

var themes = [
    Theme (themeTitle: "Équipements"),
    Theme (themeTitle: "Flux de données"),
    Theme (themeTitle: "Navigation Web"),
    Theme (themeTitle: "Courrier électronique"),
    Theme (themeTitle: "Smartphone"),
    Theme (themeTitle: "Impressions")
    
    ]


