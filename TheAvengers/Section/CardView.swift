//
//  CardView.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/26.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct CardView: View {
    public var name = "蜘蛛侠"
    public var color = Color.gray
    var body: some View {
        ZStack(alignment:.bottom){
            Rectangle()
                .frame(height:200)
                .cornerRadius(20)
                .shadow(radius: 10)
                .foregroundColor(color)
            HStack{
                Text(name)
                    .font(.body)
                    .foregroundColor(.white)
                    .padding(.leading,20)
                    .padding(.bottom,10)
                Spacer()
            }
            
                
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
