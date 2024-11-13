//
//  ContentView.swift
//  GithubActions
//
//  Created by Luís Machado on 12/11/2024.
//

import SwiftUI
import MyFeature

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")

            PackageView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
