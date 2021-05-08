//
//  wergw.swift
//  ID-sup
//
//  Created by Martin Lacaille on 08/05/2021.
//

import SwiftUI
import MapKit

struct MapView2: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            
        )
        
    }
}

struct MapView2_Previews: PreviewProvider {
    static var previews: some View {
        MapView2(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
