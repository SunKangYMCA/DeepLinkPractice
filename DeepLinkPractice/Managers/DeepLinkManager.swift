//
//  DeepLinkManager.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import SwiftUI

class DeepLinkManager: ObservableObject {
    @Published var selectedTab: AppTab = .home
    @Published var currentDetailRestaurantID: String = ""
    @Published var selectedRestaurant: Restaurant = Restaurant(id: "", name: "", rating: "", picture: "")
    
    func checkDeepLink(url: URL) -> Bool {
        guard let deepLinkComponent = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else {
            return false
        }

        print(deepLinkComponent)
        if deepLinkComponent == AppTab.home.title {
            selectedTab = .home
        } else if deepLinkComponent == AppTab.search.title {
            selectedTab = .search
        } else if deepLinkComponent == AppTab.setting.title {
            selectedTab = .setting
        } else {
            selectedTab = .none
            return self.checkInternalDeepLinks(component: deepLinkComponent)
        }
        return true
    }
    
    func checkInternalDeepLinks(component: String) -> Bool {
        if let index = DataSource.restaurants.firstIndex(where: { restaurant in
            selectedRestaurant = restaurant
            return restaurant.id == component
        }){
            currentDetailRestaurantID = DataSource.restaurants[index].id
            return true
        }
        return false
    }
}
