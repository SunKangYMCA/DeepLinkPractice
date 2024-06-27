//
//  DeepLinkPracticeApp.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import SwiftUI

@main
struct DeepLinkPracticeApp: App {
    @StateObject var deepLinkManager: DeepLinkManager = DeepLinkManager()
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(deepLinkManager)
                .onOpenURL { url in
                    deepLinkManager.selectedRestaurant = Restaurant(id: "", name: "", rating: "", picture: "")
                    if deepLinkManager.checkDeepLink(url: url) {
                        print("Deep link OK")
                    } else {
                        print("no deeplink found")
                    }
                    print(deepLinkManager.selectedRestaurant.id)
                }
        }
    }
}
