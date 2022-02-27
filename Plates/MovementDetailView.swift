//
//  MovementDetailView.swift
//  Plates
//
//  Created by Anson Wan on 2022-02-24.
//

import SwiftUI

struct MovementDetailView: View {
    var movement: Movement
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                
                MovementBasicInfo(movement: movement)
                
                
                ListSubView(header: "Instructions", list: movement.instructions)
                ListSubView(header: "Primary Muscles", list: movement.primaryMuscles)
                ListSubView(header: "Secondary Muscles", list: movement.secondaryMuscles)
                
                Spacer()
                
            }
            .navigationTitle(movement.name)
            //.navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MovementBasicInfo: View {
    var movement: Movement
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Label(movement.force ?? "None", systemImage: "figure.walk")
            Label(movement.level, systemImage: "person.fill")
            Label(movement.mechanic ?? "None", systemImage: "gearshape.2.fill")
            Label(movement.equipment ?? "None", systemImage: "wrench.and.screwdriver.fill")
        }
        .padding(.horizontal)
    }
}

struct ListSubView: View {
    var header: String
    var list: Array<String>
    var body: some View {
        VStack(alignment: .leading) {
            Text(header)
                .font(.title)
                .bold()
                .padding(.vertical, 5)
                .padding(.horizontal)
            ForEach(list, id: \.self) { step in
                VStack(alignment: .leading){
                    Text(step)
                    Divider()
                }
            }
            .padding(.horizontal)
        }
    }
}



struct MovementDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovementDetailView(movement: MovementList().movementList.first!)
    }
}
