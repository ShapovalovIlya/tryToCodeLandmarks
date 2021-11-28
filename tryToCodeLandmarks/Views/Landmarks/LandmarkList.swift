//
//  LandmarkList.swift
//  tryToCodeLandmarks
//
//  Created by Илья Шаповалов on 14.11.2021.
//

import SwiftUI
import MapKit

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { Landmark in
            (!showFavoritesOnly || Landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
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
            LandmarkList()
            .environmentObject(ModelData())
    }
}
