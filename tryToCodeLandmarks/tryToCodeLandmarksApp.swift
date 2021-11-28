//
//  tryToCodeLandmarksApp.swift
//  tryToCodeLandmarks
//
//  Created by Илья Шаповалов on 12.11.2021.
//

import SwiftUI

@main
struct tryToCodeLandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
