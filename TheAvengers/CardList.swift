//
//  CardList.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/26.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct CardList: View {
    var nameList = ["蜘蛛侠","神奇博士","铠甲勇士","朵蜜","神秘博士"]
    var colorList = ["CSpider","CStrage","CArmour","CDuomi","CDoctor"]
    
    var body: some View {
        
        VStack(alignment:.leading){
            Text("人物选择")
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0 ..< self.nameList.count) { item in
                        CardView(name: self.nameList[item], color: Color(self.colorList[item]))
                            .frame(width:200).padding(.trailing,20)
                    }
                }
            }
        }
    }
}

struct CardList_Previews: PreviewProvider {
    static var previews: some View {
        CardList()
    }
}
