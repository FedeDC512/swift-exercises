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
            pokemon.image
                .resizable()
                .scaledToFit()
                .frame(height: 60)
            Text(pokemon.name)
            Spacer()
            if pokemon.favorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    Group {
        PokemonRow(pokemon: ModelData().pokemons[0])
        PokemonRow(pokemon: ModelData().pokemons[1])
    }
}
