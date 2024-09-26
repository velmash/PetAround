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
                VStack {
                    ForEach(viewModel.settingItems, id: \.id) { item in
                        SettingItemView(item: item)
                            .frame(height: 30)
                    }
                }
                .padding(.top, 20)
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
