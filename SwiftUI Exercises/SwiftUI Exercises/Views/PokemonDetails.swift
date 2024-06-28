//
//  PokemonDetails.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 28/06/24.
//

import SwiftUI

struct PokemonDetails: View {
    @Environment(ModelData.self) var modelData
    var pokemon:Pokemon
    
    var pokemonIndex: Int {
        modelData.pokemons.firstIndex(where: { $0.id == pokemon.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        VStack {
            
            Decoration()
            ImagePreview(image: pokemon.image)
                .offset(y: -120).padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                HStack{
                    Text(pokemon.name).font(.title)
                    FavoriteButton(isSet: $modelData.pokemons[pokemonIndex].favorite)
                    Spacer()
                    CatchButton(caughtEntities: $modelData.pokemons[pokemonIndex].caught_entities)
                }
                
                HStack {
                    Text(pokemon.dex).font(.subheadline)
                    Spacer()
                    ForEach(0..<pokemon.type.count) {
                        i in Text(pokemon.type[i])
                    }
                }
                Divider()
                Text("Abilities").font(.title2)
                Text(pokemon.abilities[0])
                Divider()
                Text("Base Stats").font(.title2)
                HStack{
                    let total_stats = pokemon.base_stats.attack + pokemon.base_stats.defense + pokemon.base_stats.special_attack + pokemon.base_stats.special_defense + pokemon.base_stats.speed
                    Text("Total: \(total_stats)\nAttack: \(pokemon.base_stats.attack)\nDefense: \(pokemon.base_stats.defense)\nSpecial Attack: \(pokemon.base_stats.special_attack)\nSpecial Defense: \(pokemon.base_stats.special_defense)\nSpeed: \(pokemon.base_stats.speed)").multilineTextAlignment(.trailing)}
            }
            .padding()
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PokemonDetails(pokemon: ModelData().pokemons[2]).environment(ModelData())
}

