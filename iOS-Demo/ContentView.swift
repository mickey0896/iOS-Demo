//
//  ContentView.swift
//  iOS-Demo
//
//  Created by macbook on 3/9/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var name:String = "ไอแอม ไอรอนแมน"
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
            Text(name)
            Button("Button") {
                self.name = "กัปตันอเมริกา"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
