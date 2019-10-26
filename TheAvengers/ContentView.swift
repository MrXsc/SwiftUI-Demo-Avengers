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
                .navigationBarTitle(Text("The Avengers"))
            }.padding(.leading).padding(.trailing)
//                HStack {
//                    Spacer()
//                        Button(action: {
//                            self.show.toggle()
//                        }) {
//                            Rectangle()
//                                .clipShape(Circle())
//                                .shadow(radius: 10)
//                                .frame(width : show ? 60 : 40)
//                                .frame(height : show ? 60 : 40)
//                                .foregroundColor(.primary)
//                        }.animation(Animation.default)
//                            .padding(.trailing,10)
//                        }.frame(height:64)

            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
