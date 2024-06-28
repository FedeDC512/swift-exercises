//
//  Pokemon.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 27/06/24.
//

import Foundation
import SwiftUI

struct Pokemon: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var type:[String]
    var dex:String
    var abilities:[String]
    var base_stats:BaseStats
    var favorite:Bool
    var caught_entities:Int
    
    var image: Image {
        Image(dex)
    }
}

struct BaseStats: Hashable, Codable {
    var hp:Int
    var attack:Int
    var defense:Int
    var special_attack:Int
    var special_defense:Int
    var speed:Int
}
