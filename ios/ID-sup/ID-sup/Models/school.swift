//
//  school.swift
//  ID-sup
//
//  Created by Martin Lacaille on 03/03/2021.
//


import Foundation
import SwiftUI

struct School: Hashable, Codable, Identifiable
{
    var id: Int
    var ranking : Int
    var name : String
    var category : String
    var intramuros : Int



    var coordinates : coordinates


    var womanprop : Int


    private var imagepath : String

    var image : Image {
        Image(imagepath)
    }


    var website : String

    var fees : Int


    var socials: socials

    var resume: resume

    struct socials: Hashable, Codable{
        var instagram : String
        var twitter : String
        var facebook : String
    }

    struct resume: Hashable, Codable{

        var approxAddress : String
        var since : Int
        var numberOfStudents : Int
        var numberOfForeigners : Int
        var history : String
        var majors : [String]
        var mailAdress : String
        var phone : Int
    }

    struct coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double

    }

}



