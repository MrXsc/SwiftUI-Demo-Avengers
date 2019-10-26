//
//  SectionView.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/26.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @State var show = false
    var body: some View {
        VStack {
            ZStack(alignment:.bottom){
                Rectangle()
                    .frame(width:200,height:300)
                    .cornerRadius(30)
                    .foregroundColor(show ? Color.blue : Color.primary)
                    .offset( y: show ? -50 :0)
                    .rotationEffect(Angle(degrees: show ? -16 : 0))
                    .animation(.default)
                Rectangle()
                    .frame(width:210,height:300)
                    .cornerRadius(30)
                    .foregroundColor(show ? Color.red: Color.gray)
                    .offset(y: show ? -20 :10)
                    .rotationEffect(Angle(degrees: show ? -8 : 0))
                    .animation(.default)
              
                  Image("Ironman")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(height:300)
                    .cornerRadius(30)
                    .offset( y: 20)
                    .rotationEffect(Angle(degrees: show ? 4 : 0))
                    .animation(.default)
            }
            
            Button(action: {
                self.show.toggle()
            }) {
                Rectangle()
                    .clipShape(Circle())
                    .shadow(radius: 20)
                    .frame(width : show ? 40 : 80)
                    .frame(height : show ? 40 : 80)
                    .foregroundColor(.primary)
                    }.animation(Animation.default)
                .padding(.top,50)
            
            if show{
                CardList().animation(.easeIn).padding()
            }
        }
        
        //Text("Hello World!")
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
