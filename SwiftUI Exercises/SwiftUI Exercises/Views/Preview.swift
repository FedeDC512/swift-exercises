//
//  Preview.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 27/06/24.
//

import SwiftUI

struct Preview: View {
    var body: some View {
        Image("025").resizable().frame(width: 200, height: 200).shadow(radius: 50)
    }
}

#Preview {
    Preview()
}
