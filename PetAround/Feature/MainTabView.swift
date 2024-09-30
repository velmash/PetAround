//
//  MainTabView.swift
//  PetAround
//
//  Created by 윤형찬 on 9/25/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationStack {
            TabView {
                TrackingView()
                    .tabItem {
                        Label("산책", systemImage: "dog")
                    }
                
                SettingView()
                    .tabItem {
                        Label("설정", systemImage: "gear")
                    }
                    .environmentObject(SettingViewModel())
            }
        }
    }
}
#Preview {
    MainTabView()
}
