//
//  SearchView.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var deepLinkManager: DeepLinkManager

    var body: some View {
        NavigationView {
            List {
                ForEach(DataSource.restaurants) { unit in
                    NavigationLink {
                        DetailView(unit: unit)
                    } label: {
                        HStack {
                            Image(unit.picture)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                            Text(unit.name)
                        }
                    }
                }
            }
            .navigationTitle("Search")
        }
    }
}

#Preview {
    SearchView()
}
