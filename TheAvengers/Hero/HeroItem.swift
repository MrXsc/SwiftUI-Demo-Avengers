//
//  HeroItem.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/24.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI


struct HeroItem: View {
    
    var nameList = ["Ironman","BlackWidow" , "CapitantAmercian", "Hawkeye" , "Hulk","Thor"]
    var imageName:String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Image(self.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(height : 350)
                .cornerRadius(25)
                .shadow(radius: 10)
          
            Text(self.imageName)
                .font(.title)
                .bold()
                .foregroundColor(Color.primary)
            
            Text("\(self.imageName) \(self.imageName)")
                .lineLimit(2)
                .font(.subheadline)
                .foregroundColor(Color.primary)
                .multilineTextAlignment(.leading)
        }.padding(.trailing,10)
    }
}

//struct HeroItem_Previews: PreviewProvider {
//    static var previews: some View {
//        HeroItem(imageName: )
//    }
//}
