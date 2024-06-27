//
//  Pokedex.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 27/06/24.
//

import SwiftUI

struct Pokedex: View {
    var body: some View {
        VStack {
            
            Decoration()
            Preview()
                .offset(y: -120).padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                Text("Pikachu").font(.title)
                HStack {
                    Text("025").font(.subheadline)
                    Spacer()
                    Text("Electric").font(.subheadline)
                }
                Divider()
                Text("Abilities")
                Divider()
                Text("Base Stats")
            }
            .padding()
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Pokedex()
}
