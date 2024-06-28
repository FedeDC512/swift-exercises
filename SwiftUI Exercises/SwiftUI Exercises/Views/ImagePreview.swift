//
//  ImagePreview.swift
//  SwiftUI Exercises
//
//  Created by Federico Agnello on 27/06/24.
//

import SwiftUI

struct ImagePreview: View {
    var image: Image
    var body: some View {
        image
            .resizable().frame(width: 200, height: 200).shadow(radius: 50)
    }
}

#Preview {
    ImagePreview(image: Image("001"))
}
