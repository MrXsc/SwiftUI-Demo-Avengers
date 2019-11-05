//
//  ContentView.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/24.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        NavigationView{
            ScrollView{
                HeroRow().padding(.bottom,10)
                SectionButton()
                NavigationLink(destination: SwiftUIView(heros: heroData)) {
                    Text("Call Me")
                }
                .navigationBarTitle(Text("The Avengers"))
            }.padding(.leading).padding(.trailing)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
