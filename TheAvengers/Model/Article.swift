//
//  Article.swift
//  ShanbaySwiftUI
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Article:Hashable, Codable, Identifiable {
    var id:Int
    var nameE:String
    var nameC:String
    var textMain:String
}
