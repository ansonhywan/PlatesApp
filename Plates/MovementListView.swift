//
//  ContentView.swift
//  Plates
//
//  Created by Anson Wan on 2022-02-24.
//

import SwiftUI

struct MovementListView: View {
    let movementList: [Movement]
    var body: some View {
        List(movementList, id: \.self) { movement in
            Text(movement.name)
        }
        .navigationTitle("Movements")
    }
}

struct MovementListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MovementListView(movementList: MovementList().movementList)
        }
    }
}
