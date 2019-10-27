//
//  SwiftUIView.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var heros : [Hero]
    var body: some View {
        VStack(alignment:.leading) {
            List{
                
                ForEach(0 ..< heros.count) { item in
                    HStack{
                        Image(self.heros[item].imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height:100)
                            .cornerRadius(20)
                        VStack(alignment:.leading){
                            Spacer()
                            Text(self.heros[item].name).font(.body).bold()
                            Text(self.heros[item].description)
                        }
                        Spacer()
                        Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                    }
                }
            }
            Spacer()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(heros: heroData)
    }
}
