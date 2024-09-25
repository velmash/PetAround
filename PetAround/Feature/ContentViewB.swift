//
//  ContentViewB.swift
//  PetAround
//
//  Created by 윤형찬 on 9/25/24.
//

import SwiftUI

struct ContentViewB: View {
    var body: some View {
        VStack {
            Image(systemName: "moon.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Test, world!")
        }
        .padding()
    }
}

#Preview {
    ContentViewB()
}
