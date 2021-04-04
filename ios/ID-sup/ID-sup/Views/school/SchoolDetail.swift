//
//  SchoolDetail.swift
//  ID-sup
//
//  Created by Martin Lacaille on 02/03/2021.
//

import SwiftUI

struct SchoolDetail: View {
    
    var school: School
    
    var body: some View {
        ScrollView{
            
            MapView(latitude: school.coordinates.latitude, longitude: school.coordinates.longitude).ignoresSafeArea(edges: .top).frame(height: 300)
            CircleImage(image: school.image).offset(y: -130).padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack{
                    Text(school.name).font(.title)
                    Spacer()
                }
                
                
                HStack{
                    Text(school.resume.approxAddress)
                    Spacer()
                    Text(school.category)
                    
                }.font(.subheadline).foregroundColor(.secondary)
                
                Divider()
                
                HStack{
                    Text("Since:")
                    //Spacer()
                    Text(String(school.resume.since))

                    
                }

                HStack{
                    Text("Students:")

                    Text(String(school.resume.numberOfStudents))
                    
                }
                
                HStack{
                    
                    Text("Woman proportion:")
                    Rectangle()
                          .fill(Color.blue)
                        .frame(width: CGFloat(Double(school.womanprop)*1.4), height: 5.0)
                    Rectangle()
                          .fill(Color.gray)
                        .frame(width: CGFloat((100 - Double(school.womanprop))*1.4), height: 5.0)
                    Spacer()
                    Text(String(school.womanprop) + "%")
                    

                }
                
                
                Group{
                Divider()
                VStack(alignment: .leading){
                    Text("Field of studies:")
                    
                    ForEach(school.resume.majors, id: \.self){
                        major in
                        
                        HStack{
                        
                        Text("- "+major).font(.subheadline)
                            Spacer()
                        }
                    }

                }
                
                Divider()
                Text("About \(school.name)").font(.title2)
                Text(school.resume.history)

                Divider()
                    
                Group(){
                    HStack(alignment: .center){
                        
                        Link(destination: URL(string: school.socials.instagram)!){
                        Image("logo_IG").resizable().frame(width:50, height: 50)
                        }
                        
                        Spacer()
                        
                        
                        Link(destination: URL(string: school.socials.facebook)!){
                        Image("logo_FB").resizable().frame(width:50, height: 50)
                        }
                        
                        Spacer()
                        
                        Link(destination: URL(string: school.socials.twitter)!){
                        Image("logo_TW").resizable().frame(width:50, height: 50)
                        }
                        
                        Spacer()
                        
                        let mail = "mailto://" + school.resume.mailAdress
                        
                        Link(destination: URL(string: mail)!){
                        Image(systemName: "mail").resizable().scaledToFill().frame(width:50, height: 50)
                        }
                        
                        Spacer()
                        
                        let phone = "tel://"+String(school.resume.phone)
                        
                        Link(destination: URL(string: phone)!){
                        Image(systemName: "phone.fill").resizable().scaledToFill().frame(width:50, height: 50)

                        }
                        
                    }.padding(.horizontal, 1.0)
                        
                        
                        
                }
                    

                    
                }
                
                
                
            }.padding()
            
        }.navigationTitle(school.name)
        //.navigationBarTitleDisplayMode(.inline)

            
    }
}

struct SchoolDetail_Previews: PreviewProvider {
    static var Schools = ModelData().schools
    static var previews: some View {
        
        SchoolDetail(school: Schools[0])
    }
}
