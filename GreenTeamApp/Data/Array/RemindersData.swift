//
//  RemindersData.swift
//  GreenTeamTabView
//
//  Created by Apprenant30 on 01/02/2023.
//

import Foundation

struct Reminder: Identifiable {
    var id = UUID ()
    var reminderName: String
    
    
}

    var reminders = [
        
        Reminder (reminderName: "Éteindre ma box"),
        Reminder (reminderName: "Débrancher mes prises"),
        Reminder (reminderName: "J'arrête le Streaming"),
        Reminder (reminderName: "Le WIFI plutôt que la 4G")
    ]
