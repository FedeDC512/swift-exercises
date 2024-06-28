//
//  Pokedex.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 27/06/24.
//

import SwiftUI

struct Pokedex: View {
    var body: some View {
        PokemonList()
    }
}

#Preview {
    Pokedex().environment(ModelData())
}
