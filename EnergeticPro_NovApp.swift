//
//  EnergeticPro_NovApp.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 11/10/24.
//



//@main
//struct EnergeticPro_NovApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

import SwiftUI
import CoreData

@main
struct EnergeticPro_NovApp: App {
    let persistentContainer: NSPersistentContainer

    init() {
        persistentContainer = NSPersistentContainer(name: "FoodModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("❌ Core Data failed to load: \(error)")
            }
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}

