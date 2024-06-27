//
//  SplashViewModel.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import Foundation

class SplashViewModel: ObservableObject {
    @Published var shouldShowMainTabView: Bool = false
    
    func showMainTabView() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.shouldShowMainTabView = true
        }
    }
}
