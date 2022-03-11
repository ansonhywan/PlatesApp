//
//  PlatesApp.swift
//  Plates
//
//  Created by Anson Wan on 2022-02-24.
//

import SwiftUI

@main
struct PlatesApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            TabView {
                MyWeightsView()
                    .tabItem {
                        Image(systemName: "scalemass.fill")
                        Text("My Weights")
                    }
                
                AddWeightsView(viewModel: AddWeightsViewModel())
                    .tabItem {
                        Image(systemName: "scalemass.fill")
                        Text("Add Weights")
                    }
                    .environment(\.managedObjectContext, dataController.container.viewContext)
                
                MyMovementsView()
                    .tabItem {
                        Image(systemName: "scalemass.fill")
                        Text("My Movements")
                    }
                    .environment(\.managedObjectContext, dataController.container.viewContext)
                
                
                MovementListView(movementList: MovementListViewModel().movementList)
                    .tabItem {
                        Image(systemName: "figure.walk")
                        Text("Movements")
                    }
                
                // History View
                
                
                
                // Workout View
            }
        }
    }
}
