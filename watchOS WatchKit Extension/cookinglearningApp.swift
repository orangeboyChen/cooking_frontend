//
//  cookinglearningApp.swift
//  watchOS WatchKit Extension
//
//  Created by orangeboy Chen on 2022/5/14.
//

import SwiftUI

@main
struct cookinglearningApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
