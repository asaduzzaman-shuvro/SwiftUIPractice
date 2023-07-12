//
//  ContentView.swift
//  Shared
//
//  Created by Asaduzzaman Shuvro on 22/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
