//
//  ContentView.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Apatimeni(valueAnimation: 0, scale: .zero)
                .tabItem {
                    Image("heart")
                    Text("Απατημένη")
                }
            Dynamiki(valueAnimation: 0)
                .tabItem {
                    Image("heart")
                    Text("Δυναμική")
                }
            Ekneurismeni(valueAnimation: 0)
                .tabItem {
                    Image("heart")
                    Text("Εκνευρισμένη")
                }
            Exantlimeni(animationValue: false)
                .tabItem {
                    Image("heart")
                    Text("Εξαντηλμένη")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
