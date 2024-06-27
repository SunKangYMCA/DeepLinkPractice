//
//  AppTab.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import Foundation

enum AppTab {
    case home, search, setting, none
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .setting:
            return "Setting"
        case .none:
            return "None"
        }
    }
}
