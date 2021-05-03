//
//  SchoolData.swift
//  ID-sup
//
//  Created by Martin Lacaille on 03/03/2021.
//

import Foundation
import Combine
import SwiftUI
import MapKit

final class ModelData: ObservableObject {
    @Published var schools: [School] = load("schoolData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

func listMajors (schoolList: [School]) -> [String]
{
    var retval : [String]
    retval = []
    
    for school in schoolList {
        for major in school.resume.majors{
            if (!retval.contains(major))
            {
                retval.append(major)
            }
        }
    }
    return retval
}


func commonMajors (school: School, majors: [String]) -> Bool
{
    //checks if a major is in the school's major
    for major in majors {
        if (school.resume.majors.contains(major)) {
            return true
        }
    }
    
    return false
    
}

func randomSchool () -> some View
{
    let schools = ModelData().schools
    
    let randomInt = Int.random(in: 0..<schools.count)
    
    return SchoolRow(school: schools[randomInt])
}


func setRegion(longitude: Double, latitude: Double) -> MKCoordinateRegion
{
    
    let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    return region
}
