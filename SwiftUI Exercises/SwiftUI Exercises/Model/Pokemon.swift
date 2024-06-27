//
//  Pokemon.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 27/06/24.
//

import Foundation
import SwiftUI

struct Pokemon: Hashable, Codable {
    var name:String
    var type:[String]
    var dex:String
    var id:Int
    var abilities:[String]
    var base_stats:BaseStats
    
    /*private var preview:String
        var image: Image {
            Image(preview)
        }*/
}

struct BaseStats: Hashable, Codable {
    var hp:Int
    var attack:Int
    var defense:Int
    var special_attack:Int
    var special_defense:Int
    var speed:Int
}
