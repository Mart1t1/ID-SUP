//
//  CircleImage.swift
//  ID-sup
//
//  Created by Martin Lacaille on 03/03/2021.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image.resizable().frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("cesi"))
    }
}
