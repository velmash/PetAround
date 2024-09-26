//
//  SettingViewModel.swift
//  PetAround
//
//  Created by 윤형찬 on 9/26/24.
//

import Foundation

final class SettingViewModel: ObservableObject {
    @Published var settingItems: [SettingItem] = [
        SettingItem(icon: "person.fill", title: "로그인", destination: .contentViewA),
        SettingItem(icon: "dog.circle", title: "견종 등록", destination: .contentViewB)
    ]
}
