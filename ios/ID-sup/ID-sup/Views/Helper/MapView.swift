//
//  Mapview.swift
//  ID-sup
//
//  Created by Martin Lacaille on 03/03/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    //let longitude: Double
    //let latitude: Double
    
    @State var region: MKCoordinateRegion// = setRegion(longitude: 30, latitude: 30)
        
    
    //var self.coordinates = coordinates
    
    //init(longitude: Double, latitude: Double) {
//        self.longitude = longitude
//        self.latitude = latitude
//        //self.region
//
//        //region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))
//
//        region = setRegion(longitude: longitude, latitude: latitude)
//    }

    
    

    
    //@Binding private var region: MKCoordinateRegion

    var body: some View {

        Map(coordinateRegion:$region, showsUserLocation: false).onAppear(
        )
            //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    

}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(region: setRegion(longitude: -116, latitude: +50))
    }
}
