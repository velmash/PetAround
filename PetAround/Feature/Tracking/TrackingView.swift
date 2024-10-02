//
//  ContentView.swift
//  PetAround
//
//  Created by 윤형찬 on 9/25/24.
//

import SwiftUI

struct TrackingView: View {
    var body: some View {
        ZStack {
            Color(.bg)
                .edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .leading, spacing: 40) {
                recordView
                
                Text("산책 히스토리")
                    .font(.system(size: 18, weight: .semibold))
                
                Spacer()
                
            }
            .padding(.top, 20)
            .padding(.horizontal, 20)
        }
    }
    
    private var recordView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white)
                .strokeBorder(Color(.gray200), lineWidth: 1.5)
            
            HStack(spacing: 0) {
                Text("산책 기록")
                    .font(.system(size: 20, weight: .semibold))
                    
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.white)
                        .strokeBorder(Color(.gray200), lineWidth: 1.5)
                    
                    Button {
                        print("HI")
                    } label: {
                        Text("시작")
                    }
                }
                .frame(width: 80)
                .padding(.vertical, 15)
            }
            .padding(.horizontal, 16)
        }
        .frame(height: 80)
    }
}

#Preview {
    TrackingView()
}
