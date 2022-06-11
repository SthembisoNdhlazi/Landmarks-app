//
//  ModelData.swift
//  Landmarks
//
//  Created by IACD-020 on 2022/03/08.
//

import Foundation

//create an array of landmarks that you initialize from landmarkdata.json
var landmarks: [Landmark] = load(_filename: "landmarkData.json")

//create a load(_:) method that fetches JSON data with a given name from the apps main bundle
func load<T: Decodable>(_filename:String)->T{
    let data: Data
    guard let file = Bundle.main.url(forResource: _filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(_filename) in the bundle")
    }
    
    do{
        data = try Data(contentsOf:file)
    }catch{
        fatalError("couldn't load \(_filename) from main bundle: \n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("couldn't parse \(_filename) as \(T.self):\n\(error)")
    }
}
