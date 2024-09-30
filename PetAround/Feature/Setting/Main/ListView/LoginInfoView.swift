//
//  LoginInfoView.swift
//  PetAround
//
//  Created by 윤형찬 on 9/30/24.
//

import SwiftUI

struct LoginInfoView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(Color(.white))
            
            HStack(spacing: 10) {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.leading, 10)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("로그인 해주세요")
                    
                    Text("로그인 하러가기")
                        .font(.system(size: 12))
                        .foregroundStyle(Color.blue)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .padding(.trailing, 10)
            }
        }
        .frame(height: 80)
    }
}

#Preview {
    LoginInfoView()
}
