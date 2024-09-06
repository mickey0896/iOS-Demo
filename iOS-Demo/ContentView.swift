//
//  ContentView.swift
//  iOS-Demo
//
//  Created by macbook on 3/9/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var name:String = "วันนี้กินอะไรดีนะ ?"
    @State var menu:Int = 0
    @State var count:Int = 0
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
            Text(name)
                .font(.largeTitle).foregroundColor(.orange).frame(width: 300,height: 300,alignment: .center)
            Button("สุ่มเลยจ้าาา") {
                self.menu =  Int.random(in: 0...4)
                let menulist = ["ราเมง","โอยาโกะด้ง","ข้่าวปั้น","โอมุ","ซูชิ"]
                self.name = menulist[self.menu]
                self.count += 1
            }
            Text("สุ่มไปแล้ว " + String(count)+" ครั้ง")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
