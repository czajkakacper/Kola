//
//  KolaApp.swift
//  Kola
//
//  Created by student on 15/10/2024.
//

import SwiftUI

@main
struct KolaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
