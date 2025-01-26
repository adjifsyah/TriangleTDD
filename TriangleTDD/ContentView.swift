//
//  ContentView.swift
//  TriangleTDD
//
//  Created by Adji Firmansyah on 25/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        // Perubahan test trigger
        .padding()
    }
}

#Preview {
    ContentView()
}
