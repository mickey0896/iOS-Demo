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
                self.menu =  Int.random(in: 1...5)
                if self.menu == 1 {
                    self.name = "ราเมง"
                } else if self.menu == 2{
                    self.name = "โอยาโกะด้ง"
                }else if self.menu == 3{
                    self.name = "ข้่าวปั้น"
                }else if self.menu == 4{
                    self.name = "โอมุ"
                }else if self.menu == 5{
                    self.name = "ซูชิ"
                }else {
                    self.name = "Error"
                }
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
