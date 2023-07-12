//
//  LandmarkDetail.swift
//  SwiftUIPractice
//
//  Created by Asaduzzaman Shuvro on 8/7/22.
//

import SwiftUI

struct LandmarkDetail: View {

    @EnvironmentObject var modelData: ModelData

    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                    FavouriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                        .font(.title)
                }

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text("\(landmark.description)")
            }
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        ForEach(["iPhone SE (3nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkDetail(landmark: modelData.landmarks[0])
                .environmentObject(modelData)
        }
    }
}
