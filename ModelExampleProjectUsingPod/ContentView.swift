//
//  ContentView.swift
//  ModelExampleProjectUsingPod
//
//  Created by Muhammad Ali on 13/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("check Model") {
                loadDummyJson()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
