//
//  settingsData.swift
//  GreenTeamApp Alpha 0.0.2
//
//  Created by Apprenant30 on 03/02/2023.
//

import Foundation


struct Element : Identifiable {
    var id = UUID()
    var imageElement : String
    var name: String
    var imgArrow : String
}

var elements = [
    Element(imageElement:"Compte", name:"Compte", imgArrow: "Arrow"),
    Element(imageElement:"FAQ", name:"FAQ/Centre d'aide", imgArrow: "Arrow"),
    Element(imageElement: "Confidentialite", name:"Confidentialité",imgArrow: "Arrow"),
    Element(imageElement:"GDA", name:"A propos de GDA",imgArrow: "Arrow"),
    Element(imageElement:"Notifications", name:"Notifications",imgArrow: "Arrow"),
    Element(imageElement:"Amis", name:"Inviter des amis", imgArrow: "Arrow")
]

