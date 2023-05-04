//
//  ProgressionBar.swift
//  GreenTeamApp Alpha 0.0.2
//
//  Created by Apprenant 32 on 06/02/2023.
//

import SwiftUI



struct ProgressBar: View {
    var lastIndex: Int
    var currentIndex: Int

    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            ForEach(0...lastIndex, id: \.self) { i in
                BarElement(selected: i <= currentIndex)
            }
        }
    }
}
struct BarElement: View {
    var value : CGFloat = 0.0
    var selected: Bool
    

    var body: some View {
        ZStack (alignment: .leading){
            Capsule()
                .fill(CustomColor.paleYellow)
                .frame(width: 30, height: 5, alignment: .leading)
                .animation(.linear, value: selected)
        Capsule()
                .fill(CustomColor.boldOrange)
            .frame(width: selected ? 30 : 0, height: 5, alignment: .leading)
            .animation(.linear, value: selected)
        }
    }
}
