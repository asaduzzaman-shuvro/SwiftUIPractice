//
//  ContentView.swift
//  WatchApp Watch App
//
//  Created by Asaduzzaman Shuvro on 20/7/23.
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
