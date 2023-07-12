//
//  LandmarkView.swift
//  SwiftUIPractice
//
//  Created by SHUVRO on 7/6/22.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .padding(10)
            Text(landmark.name)
            
            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .padding(.trailing, 5)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        Group {
            LandmarkRow(landmark: modelData.landmarks[0])
            LandmarkRow(landmark: modelData.landmarks[1])
            LandmarkRow(landmark: modelData.landmarks[2])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
