//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by IACD-020 on 2022/03/08.
//

import SwiftUI

struct LandmarkRow: View {
    //add landmark as a stored property of LandmarkRow
    var landmark: Landmark
    
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            
            Text(landmark.name)
             Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        //you added the landmark:landmarks[0] to the LandmarkRow initializer to specify the first element of the Landmarks array
        Group{
        LandmarkRow(landmark: landmarks[0])
            //the previewLayout modifier sets a size that approximates a row in the list
        LandmarkRow(landmark:landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
