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
        NavigationView {
            List(movementList, id: \.self) { movement in
                NavigationLink (
                    destination: MovementDetailView(movement: movement),
                    label: {
                        Text(movement.name)
                    }
                )
            }
            .listStyle(.inset)
            .navigationTitle("Movements")
        }
    }
}

struct MovementListView_Previews: PreviewProvider {
    static var previews: some View {
        
        MovementListView(movementList: MovementList().movementList)
        
    }
}
