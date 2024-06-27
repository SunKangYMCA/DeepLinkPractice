//
//  HomeView.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var deepLinkManager: DeepLinkManager
    var body: some View {
        VStack {
            if deepLinkManager.selectedTab == .home {
               Text("Home")
            } else if deepLinkManager.selectedTab == .search {
                SearchView()
            } else if deepLinkManager.selectedTab == .setting {
                SettingView()
            } else if deepLinkManager.currentDetailRestaurantID == deepLinkManager.selectedRestaurant.id {
                DetailView(unit: deepLinkManager.selectedRestaurant)
            }
        }
    }
}

#Preview {
    HomeView()
}
