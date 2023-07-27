//
//  SwiftUIPracticeApp.swift
//  Shared
//
//  Created by Asaduzzaman Shuvro on 22/6/22.
//

import SwiftUI

@main
struct SwiftUIPracticeApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }

        #if os(watchOS)
            WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
