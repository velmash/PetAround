//
//  MainTabView.swift
//  PetAround
//
//  Created by 윤형찬 on 9/25/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("View A", systemImage: "star.fill")
                }
            
            ContentViewB()
                .tabItem {
                    Label("View B", systemImage: "moon.fill")
                }
        }
    }
}
#Preview {
    MainTabView()
}
