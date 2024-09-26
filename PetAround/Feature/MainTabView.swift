//
//  MainTabView.swift
//  PetAround
//
//  Created by 윤형찬 on 9/25/24.
//

import SwiftUI

struct MainTabView: View {
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground() // 투명 배경으로 구성
        appearance.backgroundImage = UIImage(resource: .tabBarBg)
        appearance.backgroundColor = .clear // 배경색을 투명하게 설정
        appearance.backgroundEffect = nil
        
        appearance.shadowColor = .clear // 그림자 제거
        
        // 테두리 제거
        appearance.shadowImage = nil
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        TabView {
            TrackingView()
                .tabItem {
                    Label("View A", systemImage: "star.fill")
                }
            
            SettingView()
                .tabItem {
                    Label("View B", systemImage: "moon.fill")
                }
        }
    }
}
#Preview {
    MainTabView()
}
