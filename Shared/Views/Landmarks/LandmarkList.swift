//
//  LandmarkList.swift
//  SwiftUIPractice
//
//  Created by Asaduzzaman Shuvro on 8/7/22.
//

import SwiftUI

struct LandmarkList: View {

    @EnvironmentObject var modelData: ModelData

    @State private var showsFavouritesOnly: Bool = true
    
    var filterLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showsFavouritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
          NavigationView {

              List {
                  Toggle(isOn: $showsFavouritesOnly) {
                      Text(verbatim: "Favourites Onluy")
                  }

                  ForEach(filterLandmarks) { landmark in
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
