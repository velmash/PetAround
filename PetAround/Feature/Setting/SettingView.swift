//
//  ContentViewB.swift
//  PetAround
//
//  Created by 윤형찬 on 9/25/24.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject var viewModel: SettingViewModel
    
    var body: some View {
        ZStack {
            Color(.bg)
                .edgesIgnoringSafeArea(.top)
            
            ScrollView {
                VStack(spacing: 50) {
                    NavigationLink(destination: ContentViewA()) {
                        SettingItemView(item: viewModel.settingItems[0])
                            .frame(height: 50)
                    }
                    NavigationLink(destination: ContentViewA()) {
                        SettingItemView(item: viewModel.settingItems[0])
                            .frame(height: 50)
                    }
                    NavigationLink(destination: ContentViewA()) {
                        SettingItemView(item: viewModel.settingItems[0])
                            .frame(height: 50)
                    }
                }
                
            }
        }
    }
}

struct SettingItemView: View {
    var item: SettingItem
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: item.icon)
            Text(item.title)
            Spacer()
            Image(systemName: "greaterthan")
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    SettingView()
        .environmentObject(SettingViewModel())
//    SettingItemView(item: SettingItem(icon: "person.fill", title: "로그인"))
}
