//
//  SplashView.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import SwiftUI

struct SplashView: View {
    @StateObject var viewModel: SplashViewModel = SplashViewModel()
    var body: some View {
        VStack {
            
            if viewModel.shouldShowMainTabView {
                MainTabView()
            } else {
                logoView
            }
        }
        .onAppear(perform: {
            viewModel.showMainTabView()
        })
    }
    private var logoView: some View {
        ZStack {
            Image(systemName: "house")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}


#Preview {
    SplashView()
}
