//
//  Filters.swift
//  ID-sup
//
//  Created by Martin Lacaille on 03/03/2021.
//

import SwiftUI

struct Filters: View {
    var majors: [String]

    
    @Binding var selMajors: [String]
    
    var body: some View {
        NavigationView{
        List{
        
        ForEach(self.majors, id: \.self) { item in
            MultipleSelectionRow(title: item, isSelected: self.selMajors.contains(item)) {
                   if self.selMajors.contains(item) {
                       self.selMajors.removeAll(where: { $0 == item })
                   }
                   else {
                       self.selMajors.append(item)
                   }
               }
           }
        }
        }.navigationTitle("Filters")
    }
}

struct Filters_Previews: PreviewProvider {
    @State var mamam: [String] = []
    static var previews: some View {
        Text("fsd")
        //Filters(majors: listMajors(schoolList: ModelData().schools), selMajors: $mamam)
    }
}
