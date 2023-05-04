//
//  membersData.swift
//  GreenTeamTabView
//
//  Created by Apprenant30 on 01/02/2023.
//

import Foundation

struct Profile : Identifiable {
    var id = UUID ()
    var name: String
    var profileImage: String
    
}
var members = [
    Profile (name: "Pauline", profileImage: "FemaleAvatar"),
    Profile (name: "Abdellah", profileImage: "MaleAvatar2"),
    Profile (name: "Dimitri", profileImage: "MaleAvatar3"),
    Profile (name: "Kelian", profileImage: "FemaleAvatar2"),
    Profile (name: "Yann", profileImage: "FemaleAvatar3"),
    Profile (name: "Ayoub", profileImage: "MaleAvatar1"),
    Profile (name: "Julie", profileImage: "FemaleAvatar1"),
    Profile (name: "Mickaël", profileImage:"MaleAvatar")
    
]
