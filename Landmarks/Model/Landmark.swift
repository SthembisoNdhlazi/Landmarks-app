//
//  Landmark.swift
//  Landmarks
//
//  Created by IACD-020 on 2022/03/08.
//

import Foundation
import SwiftUI
import CoreLocation //useful for interacting with the mapkit framework

//some of the things here will be from the LandmarkData.json file that you imported from the apple website

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite:Bool
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
        
    }
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
        
        
    }
    }



