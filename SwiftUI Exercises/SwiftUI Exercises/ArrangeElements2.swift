//
//  ArrangeElements2.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 24/06/24.
//

import SwiftUI

struct ArrangeElements2: View {
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                Text("Hello There!")
                    .font(.title)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .foregroundStyle(.yellow)
                    .padding(20)
                    .background(Color.black)
                Spacer()
                Spacer()
                Image(systemName: "circle")
                Spacer()
                HStack {
                    Image(systemName: "square.fill")
                    Image(systemName: "square.fill")
                    Image(systemName: "square.fill")
                    Image(systemName: "square.fill")
                    Image(systemName: "square.fill")
                    Image(systemName: "square.fill")
                }
                .padding(.trailing)
                .border(Color.black)
            }
        }
    }
}

#Preview {
    ArrangeElements2()
}
