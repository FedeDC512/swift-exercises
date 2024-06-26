//
//  Challenge1.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 24/06/24.
//

import SwiftUI

struct Challenge1: View {
    var body: some View {
        VStack {
            Color.blue
                .cornerRadius(20.0)
            Color.green
                .cornerRadius(20.0)
            Spacer(minLength: 30)
            HStack {
                Color.red
                    .cornerRadius(10.0)
                Color.red
                    .cornerRadius(10.0)
                Color.red
                    .cornerRadius(10.0)
            }
            .frame(height: 120)
        }
        .padding()
    }
}

#Preview {
    Challenge1()
}
