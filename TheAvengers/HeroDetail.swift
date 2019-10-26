//
//  HeroDetail.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/25.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI
    
struct HeroDetail: View {
   
    var hero: Hero
    
    var body: some View {
        List{
            ZStack(alignment: .bottom) {
                 Image(self.hero.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                HStack() {
                    Text(self.hero.name)
                        .bold()
                        .font(.title)
                        .padding(.leading)
                        .padding(.bottom)
                        .foregroundColor(Color.white)
                    Spacer()
                }
            }.listRowInsets(EdgeInsets())
            VStack{
                    Text(self.hero.description)
                        .font(.body)
                        .foregroundColor(Color.primary)
                        .lineLimit(nil)
                        .lineSpacing(8)
                    .padding(.top)
            }
            HStack{
                Spacer()
                OrderButton()
                Spacer()
            }.padding(.top,50)
        }
        .padding(.bottom)
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        
            
    }
}

struct OrderButton : View {
    var body: some View{
        Button(action : { }){
            Text("Call Me Baby")
                .bold()
        }.frame(width:160,height:50)
        .foregroundColor(.white)
        .background(Rectangle()
            .foregroundColor(.blue))
        .cornerRadius(10)
        
    }
}

//struct HeroDetail_Previews: PreviewProvider {
//
//    static var previews: some View {
//        HeroDetail(hero:herot)
//    }
//}
