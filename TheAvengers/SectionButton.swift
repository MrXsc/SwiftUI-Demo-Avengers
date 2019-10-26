//
//  SectionButton.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/26.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct SectionButton: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("人物选择")
                .font(.headline)
            HStack{
                Spacer()
                NavigationLink(destination: SectionView()) {
                Image("SectionHero")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(height : 160)
                    .shadow(radius: 10)
                }
                Spacer()
            }
        }
    }
}

struct SectionButton_Previews: PreviewProvider {
    static var previews: some View {
        SectionButton()
    }
}
