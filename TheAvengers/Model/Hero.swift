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
    var description:String = "Apr 30, 2008 · Directed by Jon Favreau. With Robert Downey Jr., Gwyneth Paltrow, Terrence Howard, Jeff Bridges. After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil."
}


