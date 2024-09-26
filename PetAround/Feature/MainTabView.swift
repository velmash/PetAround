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
        appearance.backgroundColor = .bg // 배경색을 투명하게 설정
        appearance.backgroundEffect = nil
        
        appearance.shadowColor = .clear // 그림자 제거
        
        // 테두리 제거
        appearance.shadowImage = nil
        
        // 선택된 탭 아이템의 색상 설정
        appearance.stackedLayoutAppearance.selected.iconColor = .mainDark
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor(.mainDark)]
        
        // 선택되지 않은 탭 아이템의 색상 설정 (옵션)
        appearance.stackedLayoutAppearance.normal.iconColor = .gray
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.gray]
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
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
#Preview {
    MainTabView()
}
