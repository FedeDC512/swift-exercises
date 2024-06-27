//
//  PokemonRow.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 27/06/24.
//

import SwiftUI

struct PokemonRow: View {
    
    var pokemon:Pokemon
    
    var body: some View {
        HStack{
            Text(pokemon.name)
        }
    }
}

#Preview {
    PokemonRow(pokemon: pokemons[0])
}

#Preview {
    PokemonRow(pokemon: pokemons[1])
}
