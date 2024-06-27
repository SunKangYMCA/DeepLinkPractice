//
//  SettingView.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject var deepLinkManager: DeepLinkManager
    var body: some View {
        VStack {
            Text("Setting")
        }
    }
}

#Preview {
    SettingView()
}
