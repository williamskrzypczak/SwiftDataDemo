//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Bill Skrzypczak on 10/20/24.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: DataItem.self)
        }
    }
}

