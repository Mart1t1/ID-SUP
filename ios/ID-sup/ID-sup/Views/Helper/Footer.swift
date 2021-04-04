//
//  SwiftUIView.swift
//  ID-sup
//
//  Created by Martin Lacaille on 04/03/2021.
//

import SwiftUI

struct footer: View {
    var school: School
    private var socials: School.socials {school.socials }
    var body: some View {
        Text("")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var School = ModelData().schools[0]
    static var previews: some View {
        footer(school: School)
    }
}
