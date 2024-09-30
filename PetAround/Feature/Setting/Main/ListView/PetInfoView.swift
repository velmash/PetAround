//
//  SettingItemModel.swift
//  PetAround
//
//  Created by 윤형찬 on 9/26/24.
//

import SwiftUI

struct PetinfoView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(Color(.white))
            
            HStack(spacing: 10) {
                Image(systemName: "dog.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.leading, 10)
                
                Text("펫을 등록 해주세요.")
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .padding(.trailing, 10)
            }
        }
        .frame(height: 50)
    }
}

#Preview {
    PetinfoView()
}
