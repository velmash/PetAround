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
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 20) {
                    Spacer()
                    
                    Text("설정")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    NavigationLink(destination: LoginView()) {
                        LoginInfoView()
                    }
                    
                    NavigationLink(destination: PetConfigView()) {
                        PetinfoView()
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.top, 1)
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    SettingView()
        .environmentObject(SettingViewModel())
}
