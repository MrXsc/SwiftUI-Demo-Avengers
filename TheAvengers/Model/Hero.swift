//
//  Hero.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Hero : Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var description:String = "123"
}


