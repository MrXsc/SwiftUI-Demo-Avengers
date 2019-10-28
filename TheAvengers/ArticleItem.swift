//
//  ArticleItem.swift
//  ShanbaySwiftUI
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct ArticleItem: View {
    var a : Article
    var imageName = "bc3"
    var body: some View {
        
        HStack {
            ZStack(alignment:.bottomLeading){
                Image(imageName)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .cornerRadius(10)
                    //.shadow(radius: 10)
                
                Rectangle()
                    .frame(height: 20)
                    .foregroundColor(.black)
                    .blur(radius: 5)
                
                Text("\(a.id):  \(a.nameE)")
                    .bold()
                    .padding(.leading,8)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ArticleItem_Previews: PreviewProvider {
    static var previews: some View {
       // ArticleItem(a: Article(id: 2, nameE: "d", nameC: "we", textMain: "dd"))
        ArticleItem(a: articleData[0])
    }
}
