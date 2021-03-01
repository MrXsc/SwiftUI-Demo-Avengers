//
//  HeroRow.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/24.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI


struct HeroRow: View {
    var nameList = ["Ironman","BlackWidow","CapitantAmercian", "Hawkeye" , "Hulk","Thor"]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("复仇者联盟")
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(0..<nameList.count) { item in
                        NavigationLink(destination: HeroDetail(hero: Hero(id: item, name: self.nameList[item], imageName: self.nameList[item]))){
                            HeroItem(imageName: self.nameList[item])
                        }
                    }
                }
            }
        }
    }
}

struct HeroRow_Previews: PreviewProvider {
    static var previews: some View {
        HeroRow()
    }
}
