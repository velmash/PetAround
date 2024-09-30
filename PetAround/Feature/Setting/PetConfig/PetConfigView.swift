//
//  ContentViewB.swift
//  PetAround
//
//  Created by 윤형찬 on 9/26/24.
//

import SwiftUI

struct PetConfigView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
        }
        .modifier(CustomNavigationBarModifier(title: "펫 등록", action: {
            dismiss()
        }))
    }
}

#Preview {
    PetConfigView()
}


