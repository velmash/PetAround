//
//  ContentViewA.swift
//  PetAround
//
//  Created by 윤형찬 on 9/26/24.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
        }
        .modifier(CustomNavigationBarModifier(title: "로그인", action: {
            dismiss()
        }))
    }
}

#Preview {
    LoginView()
}
