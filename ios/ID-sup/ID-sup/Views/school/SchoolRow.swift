//
//  detail.swift
//  ID-sup
//
//  Created by Martin Lacaille on 02/03/2021.
//

import SwiftUI

struct SchoolRow: View {
    var school : School
    
    var body: some View {
        HStack {
            school.image.resizable().frame(width: 50, height: 50).padding(5)
            Text(school.name)
            Spacer()
            Text(school.resume.approxAddress.prefix(5)).foregroundColor(.gray).padding()
            
        }
        
    }
}

struct SchoolRow_Previews: PreviewProvider {
    static var Schools = ModelData().schools
    static var previews: some View {
        SchoolRow(school: Schools[0]).previewLayout(.fixed(width: 300, height: 70))
    }
}
