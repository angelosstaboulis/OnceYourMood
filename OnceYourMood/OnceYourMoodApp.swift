//
//  OnceYourMoodApp.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 9/6/24.
//

import SwiftUI

@main
struct OnceYourMoodApp: App {
    init(){
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        UITabBar.appearance().barTintColor = UIColor(.purple)
        UITabBar.appearance().backgroundColor = UIColor(.purple)
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
