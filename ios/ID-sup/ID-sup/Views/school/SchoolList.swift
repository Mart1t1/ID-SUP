//
//  detailList.swift
//  ID-sup
//
//  Created by Martin Lacaille on 02/03/2021.
//

import SwiftUI


struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

struct SchoolList: View {
    
    let schools = ModelData().schools
    
    @State var majors = listMajors(schoolList: ModelData().schools).sorted()

    
    @State var selMajors = [""]//listMajors(schoolList: ModelData().schools)
    

    
    
    var body: some View {
        NavigationView {
            
            List{
                
                NavigationLink(
                    destination: Filters(majors: majors, selMajors: $selMajors),
                    label: {
                        Text("Filters")
                    })
            
            
//                ForEach(self.majors, id: \.self) { item in
//                    MultipleSelectionRow(title: item, isSelected: self.selMajors.contains(item)) {
//                           if self.selMajors.contains(item) {
//                               self.selMajors.removeAll(where: { $0 == item })
//                           }
//                           else {
//                               self.selMajors.append(item)
//                           }
//                       }
//                   }
                
            ForEach(ModelData().schools, id: \.id)
            {
                
                school in
                
                if(commonMajors(school: school, majors: self.selMajors))
                {
                NavigationLink(
                    destination: SchoolDetail(school: school))
                    {

                        SchoolRow(school: school)
                    }
                }
            }
                        
            
            }.navigationTitle("ID sup")
        }
    }
}

struct SchoolList_Previews: PreviewProvider {
    static var previews: some View {
        SchoolList()
    }
}
