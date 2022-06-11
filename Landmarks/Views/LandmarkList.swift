//
//  LandmarkList.swift
//  Landmarks
//
//  Created by IACD-020 on 2022/03/08.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks:[Landmark]{
        landmarks.filter{ Landmark in
            (!showFavoritesOnly || Landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
            
        ForEach(filteredLandmarks){ landmark in
            NavigationLink{
                LandmarkDetail(landmark:landmark)
            }label:{
            
            LandmarkRow(landmark: landmark)
            }
            
        }
            }
        .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    
        
        static var previews: some View {
            /*
            ForEach(["iPhone SE (2nd generation)", "iPhone 12 Pro", "iPhone 13"], id:\.self){ deviceName in
                
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            }
             */
            
            LandmarkList()
        }
    
}


