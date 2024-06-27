//
//  AppTab.swift
//  DeepLinkPractice
//
//  Created by 강성찬 on 2024-06-19.
//

import Foundation

enum AppTab {
    case home, search, setting
    
    var title: String {
        switch self {
        case .home:
            return "home"
        case .search:
            return "search"
        case .setting:
            return "setting"
        }
    }
}
