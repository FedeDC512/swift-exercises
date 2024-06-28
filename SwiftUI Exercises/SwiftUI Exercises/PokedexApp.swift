//
//  PokedexApp.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 28/06/24.
//

import Foundation
import SwiftUI

@main
struct PokedexApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(ModelData())
        }
    }
}
