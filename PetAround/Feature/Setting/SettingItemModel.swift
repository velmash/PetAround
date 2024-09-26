//
//  SettingItemModel.swift
//  PetAround
//
//  Created by 윤형찬 on 9/26/24.
//

import Foundation

enum DestinationView {
    case contentViewA
    case contentViewB
}

struct SettingItem: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
    var subtitle: String? = nil
    var isToggle: Bool = false
    let destination: DestinationView
}
