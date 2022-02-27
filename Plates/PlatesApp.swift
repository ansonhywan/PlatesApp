//
//  PlatesApp.swift
//  Plates
//
//  Created by Anson Wan on 2022-02-24.
//

import SwiftUI

@main
struct PlatesApp: App {
    var body: some Scene {
        WindowGroup {
            MovementListView(movementList: MovementList().movementList)
        }
    }
}
