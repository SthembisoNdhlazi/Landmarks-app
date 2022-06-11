//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by IACD-020 on 2022/03/08.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        
        ScrollView{
            MapView(coordinate:landmark.locationCoordinate)
            //the next two lines allow the map content to extend to the top edge of the screen
                .ignoresSafeArea( edges: .top)
                .frame(height:300)
            CircleImage(image: landmark.image)
            //the next adjustments make room for the text by moving the image upwards
                .offset(y:-130)
                .padding(.bottom,-130)
            
        VStack(alignment: .leading) {
            Text(landmark.name)
                .font(.title)
            .foregroundColor(.green)
            HStack {
                Text(landmark.park)
                    
                Spacer()
                Text(landmark.state)
                    
            }
            //If the next few lines are directly outside the stack it applies to everything in the stack
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            Text("About \(landmark.name)")
                .font(.title2)
            Text(landmark.description)
            
        }
        .padding()
        
           
       
    }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark:landmarks[0])
    }
}
