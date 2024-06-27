//
//  MainTabView.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var deepLinkManager: DeepLinkManager
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            SettingView()
                .tabItem {
                    Label("Setting", systemImage: "gearshape.fill")
                }
            
        }
    }
}

#Preview {
    MainTabView()
}
