//
//  DetailView.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var deepLinkManager: DeepLinkManager
    var unit: Restaurant
    var body: some View {
        VStack {
            Image(unit.picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 350)
            Text("💛 Rating: ")
            Text(unit.rating)
        }
        .navigationTitle(unit.name)
    }
}

#Preview {
    DetailView(unit: Restaurant(id: "PLACE101", name: "Hakkasan", rating: "4/5", picture: "Hakkasan, Beverly Hills, U.S.A..imageset"))
}
