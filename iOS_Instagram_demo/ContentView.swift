//
//  ContentView.swift
//  iOS_Instagram_demo
//
//  Created by Sarah Threewits on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Top left")
                Spacer()
                Text("Top Right")
            }
        Color.blue.aspectRatio(1, contentMode: .fit)
            HStack {
                Text("Left")
                Text("Right")
            }
        Text("Hello there! My name is Sarah, and I cry sometimes.")
        }
    }
}

#Preview {
    ContentView()
}
