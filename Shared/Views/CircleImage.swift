//
//  ImageView.swift
//  SwiftUIPractice
//
//  Created by SHUVRO on 7/6/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("icon")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
